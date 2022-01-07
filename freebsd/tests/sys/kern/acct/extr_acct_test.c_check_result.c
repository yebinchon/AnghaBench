
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cf {float f; double c; } ;


 int ATF_CHECK (int) ;
 double FLT_EPSILON ;
 float fabs (float) ;
 int printf (char*,...) ;

__attribute__((used)) static void
check_result(const char *name, float expected, union cf v)
{
 double eps;

 eps = fabs(expected - v.f) / expected;
 ATF_CHECK(eps <= FLT_EPSILON);
 if (eps > FLT_EPSILON) {
  printf("Error in %s\n", name);
  printf("Got      0x%08x %12g\n", v.c, v.f);
  v.f = expected;
  printf("Expected 0x%08x %12g (%.15lg)\n", v.c, v.f, expected);
  printf("Epsilon=%lg, rather than %g\n", eps, FLT_EPSILON);
 }
}
