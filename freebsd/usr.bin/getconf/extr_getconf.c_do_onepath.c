
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ errno ;
 long pathconf (char const*,int) ;
 int printf (char*,...) ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
do_onepath(const char *name, int key, const char *path)
{
 long value;

 errno = 0;
 value = pathconf(path, key);
 if (value == -1 && errno != EINVAL && errno != 0)
  warn("pathconf: %s", name);
 printf("%s: ", name);
 if (value == -1)
  printf("undefined\n");
 else
  printf("%ld\n", value);
}
