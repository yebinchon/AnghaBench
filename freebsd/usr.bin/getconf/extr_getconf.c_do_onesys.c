
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int printf (char*,...) ;
 long sysconf (int) ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
do_onesys(const char *name, int key)
{
 long value;

 errno = 0;
 value = sysconf(key);
 if (value == -1 && errno != 0) {
  warn("sysconf: %s", name);
  return;
 }
 printf("%s: ", name);
 if (value == -1)
  printf("undefined\n");
 else
  printf("%ld\n", value);
}
