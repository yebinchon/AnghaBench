
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tname ;
struct mt_vmm_info {int mt_vcpu; int mt_ctx; int mt_thr; } ;
struct TYPE_2__ {int rip; } ;


 int MAXCOMLEN ;
 int exit (int) ;
 int gdb_cpu_add (int) ;
 int pthread_set_name_np (int ,char*) ;
 int snprintf (char*,int,char*,int) ;
 int vm_loop (int ,int,int ) ;
 TYPE_1__* vmexit ;

__attribute__((used)) static void *
fbsdrun_start_thread(void *param)
{
 char tname[MAXCOMLEN + 1];
 struct mt_vmm_info *mtp;
 int vcpu;

 mtp = param;
 vcpu = mtp->mt_vcpu;

 snprintf(tname, sizeof(tname), "vcpu %d", vcpu);
 pthread_set_name_np(mtp->mt_thr, tname);

 gdb_cpu_add(vcpu);

 vm_loop(mtp->mt_ctx, vcpu, vmexit[vcpu].rip);


 exit(1);
 return (((void*)0));
}
