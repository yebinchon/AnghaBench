
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* buf; int len; } ;
typedef int FILE ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 TYPE_1__ buf ;
 int die_errno (char*,...) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int fprintf (int ,char*) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ is_from_line (char*,int) ;
 scalar_t__ is_gtfrom (TYPE_1__*) ;
 int keep_cr ;
 scalar_t__ mboxrd ;
 int open (char const*,int,int) ;
 int stderr ;
 int strbuf_addch (TYPE_1__*,char) ;
 scalar_t__ strbuf_getwholeline (TYPE_1__*,int *,char) ;
 int strbuf_remove (TYPE_1__*,int ,int) ;
 int strbuf_setlen (TYPE_1__*,int) ;
 int * xfdopen (int,char*) ;

__attribute__((used)) static int split_one(FILE *mbox, const char *name, int allow_bare)
{
 FILE *output;
 int fd;
 int status = 0;
 int is_bare = !is_from_line(buf.buf, buf.len);

 if (is_bare && !allow_bare) {
  fprintf(stderr, "corrupt mailbox\n");
  exit(1);
 }
 fd = open(name, O_WRONLY | O_CREAT | O_EXCL, 0666);
 if (fd < 0)
  die_errno("cannot open output file '%s'", name);
 output = xfdopen(fd, "w");




 for (;;) {
  if (!keep_cr && buf.len > 1 && buf.buf[buf.len-1] == '\n' &&
   buf.buf[buf.len-2] == '\r') {
   strbuf_setlen(&buf, buf.len-2);
   strbuf_addch(&buf, '\n');
  }

  if (mboxrd && is_gtfrom(&buf))
   strbuf_remove(&buf, 0, 1);

  if (fwrite(buf.buf, 1, buf.len, output) != buf.len)
   die_errno("cannot write output");

  if (strbuf_getwholeline(&buf, mbox, '\n')) {
   if (feof(mbox)) {
    status = 1;
    break;
   }
   die_errno("cannot read mbox");
  }
  if (!is_bare && is_from_line(buf.buf, buf.len))
   break;
 }
 fclose(output);
 return status;
}
