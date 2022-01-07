
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; scalar_t__ buf; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 struct strbuf STRBUF_INIT ;
 int closedir (int *) ;
 int * opendir (int ) ;
 int packdir ;
 int packtmp ;
 struct dirent* readdir (int *) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,scalar_t__,size_t) ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void remove_temporary_files(void)
{
 struct strbuf buf = STRBUF_INIT;
 size_t dirlen, prefixlen;
 DIR *dir;
 struct dirent *e;

 dir = opendir(packdir);
 if (!dir)
  return;


 dirlen = strlen(packdir) + 1;
 strbuf_addstr(&buf, packtmp);

 prefixlen = buf.len - dirlen;

 while ((e = readdir(dir))) {
  if (strncmp(e->d_name, buf.buf + dirlen, prefixlen))
   continue;
  strbuf_setlen(&buf, dirlen);
  strbuf_addstr(&buf, e->d_name);
  unlink(buf.buf);
 }
 closedir(dir);
 strbuf_release(&buf);
}
