
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mib ;
struct TYPE_3__ {int dwNumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int CTL_HW ;
 int GetSystemInfo (TYPE_1__*) ;
 int HW_NCPU ;
 int _SC_NPROCESSORS_ONLN ;
 int sysconf (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
system_ncpus(void)
{
 int ncpus;





 ncpus = sysconf(_SC_NPROCESSORS_ONLN);
 return (ncpus);
}
