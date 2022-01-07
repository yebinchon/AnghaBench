
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; scalar_t__ len; } ;
struct object_id {int dummy; } ;
struct bundle_header {int references; int prerequisites; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int add_to_ref_list (struct object_id*,char const*,int *) ;
 int bundle_signature ;
 int close (int) ;
 int error (int ,char const*,...) ;
 int isspace (char const) ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 scalar_t__ strbuf_getwholeline_fd (struct strbuf*,int,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_remove (struct strbuf*,int ,int) ;
 int strbuf_rtrim (struct strbuf*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int parse_bundle_header(int fd, struct bundle_header *header,
          const char *report_path)
{
 struct strbuf buf = STRBUF_INIT;
 int status = 0;


 if (strbuf_getwholeline_fd(&buf, fd, '\n') ||
     strcmp(buf.buf, bundle_signature)) {
  if (report_path)
   error(_("'%s' does not look like a v2 bundle file"),
         report_path);
  status = -1;
  goto abort;
 }


 while (!strbuf_getwholeline_fd(&buf, fd, '\n') &&
        buf.len && buf.buf[0] != '\n') {
  struct object_id oid;
  int is_prereq = 0;
  const char *p;

  if (*buf.buf == '-') {
   is_prereq = 1;
   strbuf_remove(&buf, 0, 1);
  }
  strbuf_rtrim(&buf);






  if (parse_oid_hex(buf.buf, &oid, &p) ||
      (*p && !isspace(*p)) ||
      (!is_prereq && !*p)) {
   if (report_path)
    error(_("unrecognized header: %s%s (%d)"),
          (is_prereq ? "-" : ""), buf.buf, (int)buf.len);
   status = -1;
   break;
  } else {
   if (is_prereq)
    add_to_ref_list(&oid, "", &header->prerequisites);
   else
    add_to_ref_list(&oid, p + 1, &header->references);
  }
 }

 abort:
 if (status) {
  close(fd);
  fd = -1;
 }
 strbuf_release(&buf);
 return fd;
}
