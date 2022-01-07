
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int err (int ,char*,char const*) ;
 scalar_t__ errno ;
 long pathconf (char const*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
do_pathconf(const char *name, int key, const char *path)
{
 long value;

 errno = 0;
 value = pathconf(path, key);
 if (value == -1 && errno != 0)
  err(EX_OSERR, "pathconf: %s", name);
 else if (value == -1)
  printf("undefined\n");
 else
  printf("%ld\n", value);
}
