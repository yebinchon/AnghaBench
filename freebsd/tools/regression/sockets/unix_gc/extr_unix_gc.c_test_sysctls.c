
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getinflight () ;
 int getopenfiles () ;
 int test ;
 int trigger_gc () ;
 int warnx (char*,int ,int,int) ;

__attribute__((used)) static void
test_sysctls(int before_inflight, int before_openfiles)
{
 int after_inflight, after_openfiles;

 trigger_gc();
 after_inflight = getinflight();
 if (after_inflight != before_inflight)
  warnx("%s: before inflight: %d, after inflight: %d",
      test, before_inflight, after_inflight);

 after_openfiles = getopenfiles();
 if (after_openfiles != before_openfiles)
  warnx("%s: before: %d, after: %d", test, before_openfiles,
      after_openfiles);
}
