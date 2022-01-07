
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
test(int (tester) (void), const char * label)
{
 int ret;

 if ((ret = tester()))
  printf("%s failed (%d)\n", label, ret);
 else
  printf("%s succeeded\n", label);
}
