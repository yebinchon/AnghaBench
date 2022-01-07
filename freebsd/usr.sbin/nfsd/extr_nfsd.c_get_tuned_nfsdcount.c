
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ncpu ;


 int DEFNFSDCNT ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int warnx (char*,int) ;

__attribute__((used)) static int
get_tuned_nfsdcount(void)
{
 int ncpu, error, tuned_nfsdcnt;
 size_t ncpu_size;

 ncpu_size = sizeof(ncpu);
 error = sysctlbyname("hw.ncpu", &ncpu, &ncpu_size, ((void*)0), 0);
 if (error) {
  warnx("sysctlbyname(hw.ncpu) failed defaulting to %d nfs servers",
      DEFNFSDCNT);
  tuned_nfsdcnt = DEFNFSDCNT;
 } else {
  tuned_nfsdcnt = ncpu * 8;
 }
 return tuned_nfsdcnt;
}
