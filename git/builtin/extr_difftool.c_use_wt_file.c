
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
struct stat {int st_mode; } ;
struct object_id {int dummy; } ;


 int OBJ_BLOB ;
 int O_RDONLY ;
 struct strbuf STRBUF_INIT ;
 int S_ISLNK (int ) ;
 int add_path (struct strbuf*,int ,char const*) ;
 int index_fd (int *,struct object_id*,int,struct stat*,int ,char const*,int ) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 int lstat (int ,struct stat*) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 scalar_t__ oideq (struct object_id*,struct object_id*) ;
 int open (int ,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int the_index ;

__attribute__((used)) static int use_wt_file(const char *workdir, const char *name,
         struct object_id *oid)
{
 struct strbuf buf = STRBUF_INIT;
 struct stat st;
 int use = 0;

 strbuf_addstr(&buf, workdir);
 add_path(&buf, buf.len, name);

 if (!lstat(buf.buf, &st) && !S_ISLNK(st.st_mode)) {
  struct object_id wt_oid;
  int fd = open(buf.buf, O_RDONLY);

  if (fd >= 0 &&
      !index_fd(&the_index, &wt_oid, fd, &st, OBJ_BLOB, name, 0)) {
   if (is_null_oid(oid)) {
    oidcpy(oid, &wt_oid);
    use = 1;
   } else if (oideq(oid, &wt_oid))
    use = 1;
  }
 }

 strbuf_release(&buf);

 return use;
}
