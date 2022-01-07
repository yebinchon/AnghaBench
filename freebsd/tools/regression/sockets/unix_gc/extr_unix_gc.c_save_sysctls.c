
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getinflight () ;
 int getopenfiles () ;

__attribute__((used)) static void
save_sysctls(int *before_inflight, int *before_openfiles)
{

 *before_inflight = getinflight();
 *before_openfiles = getopenfiles();
}
