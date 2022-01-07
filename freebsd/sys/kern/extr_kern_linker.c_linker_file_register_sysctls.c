
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_4__ {int filename; } ;


 int FILE ;
 int KLD_DPF (int ,char*) ;
 int SA_XLOCKED ;
 int kld_sx ;
 scalar_t__ linker_file_lookup_set (TYPE_1__*,char*,struct sysctl_oid***,struct sysctl_oid***,int *) ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int sysctl_register_disabled_oid (struct sysctl_oid*) ;
 int sysctl_register_oid (struct sysctl_oid*) ;
 int sysctl_wlock () ;
 int sysctl_wunlock () ;

__attribute__((used)) static void
linker_file_register_sysctls(linker_file_t lf, bool enable)
{
 struct sysctl_oid **start, **stop, **oidp;

 KLD_DPF(FILE,
     ("linker_file_register_sysctls: registering SYSCTLs for %s\n",
     lf->filename));

 sx_assert(&kld_sx, SA_XLOCKED);

 if (linker_file_lookup_set(lf, "sysctl_set", &start, &stop, ((void*)0)) != 0)
  return;

 sx_xunlock(&kld_sx);
 sysctl_wlock();
 for (oidp = start; oidp < stop; oidp++) {
  if (enable)
   sysctl_register_oid(*oidp);
  else
   sysctl_register_disabled_oid(*oidp);
 }
 sysctl_wunlock();
 sx_xlock(&kld_sx);
}
