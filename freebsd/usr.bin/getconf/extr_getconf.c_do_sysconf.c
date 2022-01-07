
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int err (int ,char*,char const*) ;
 scalar_t__ errno ;
 int printf (char*,...) ;
 long sysconf (int) ;

__attribute__((used)) static void
do_sysconf(const char *name, int key)
{
 long value;

 errno = 0;
 value = sysconf(key);
 if (value == -1 && errno != 0)
  err(EX_OSERR, "sysconf: %s", name);
 else if (value == -1)
  printf("undefined\n");
 else
  printf("%ld\n", value);
}
