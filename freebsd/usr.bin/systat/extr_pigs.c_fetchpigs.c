
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct p_times {int dummy; } ;
struct kinfo_proc {float ki_swtime; int ki_flag; scalar_t__ ki_pctcpu; } ;
struct TYPE_4__ {float pt_pctcpu; struct kinfo_proc* pt_kp; } ;


 int KERN_PROC_ALL ;
 int P_INMEM ;
 int die (int ) ;
 int error (char*,...) ;
 double exp (float) ;
 int free (TYPE_1__*) ;
 double fscale ;
 int kd ;
 int kvm_geterr (int ) ;
 struct kinfo_proc* kvm_getprocs (int ,int ,int ,int*) ;
 float lccpu ;
 TYPE_1__* malloc (int) ;
 int nproc ;
 TYPE_1__* pt ;

void
fetchpigs(void)
{
 int i;
 float ftime;
 float *pctp;
 struct kinfo_proc *kpp;
 static int lastnproc = 0;

 if ((kpp = kvm_getprocs(kd, KERN_PROC_ALL, 0, &nproc)) == ((void*)0)) {
  error("%s", kvm_geterr(kd));
  if (pt)
   free(pt);
  return;
 }
 if (nproc > lastnproc) {
  free(pt);
  if ((pt =
      malloc(nproc * sizeof(struct p_times))) == ((void*)0)) {
   error("Out of memory");
   die(0);
  }
 }
 lastnproc = nproc;



 for (i = 0; i < nproc; i++) {
  pt[i].pt_kp = &kpp[i];
  pctp = &pt[i].pt_pctcpu;
  ftime = kpp[i].ki_swtime;
  if (ftime == 0 || (kpp[i].ki_flag & P_INMEM) == 0)
   *pctp = 0;
  else
   *pctp = ((double) kpp[i].ki_pctcpu /
     fscale) / (1.0 - exp(ftime * lccpu));
 }
}
