
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {char* rt_name; } ;


 int printf (char*,...) ;
 TYPE_1__* test ;
 int test_acknowleged ;
 int test_index ;
 int vprintf (char const*,int ) ;

__attribute__((used)) static void
vprint_status(const char *status, const char *fmt, va_list ap)
{

 printf("%s %d", status, test_index);
 if (test->rt_name)
  printf(" - %s", test->rt_name);
 if (fmt) {
  printf(" # ");
  vprintf(fmt, ap);
 }
 printf("\n");
 test_acknowleged = 1;
}
