
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 size_t confstr (int,char*,size_t) ;
 int err (int ,char*,char const*) ;
 int errno ;
 int printf (char*,...) ;

__attribute__((used)) static void
do_confstr(const char *name, int key)
{
 size_t len;
 int savederr;

 savederr = errno;
 errno = 0;
 len = confstr(key, 0, 0);
 if (len == 0) {
  if (errno)
   err(EX_OSERR, "confstr: %s", name);
  else
   printf("undefined\n");
 } else {
  char buf[len + 1];

  confstr(key, buf, len);
  printf("%s\n", buf);
 }
 errno = savederr;
}
