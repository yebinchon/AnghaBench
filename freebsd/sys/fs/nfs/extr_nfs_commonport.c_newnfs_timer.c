
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ NFSD_MONOSEC ;
 int callout_reset (int *,int ,void (*) (void*),int *) ;
 int newnfsd_callout ;
 int nfscl_ticks ;
 int nfsd_call_servertimer () ;
 int stub1 () ;

void
newnfs_timer(void *arg)
{
 static time_t lasttime = 0;





 if (lasttime != NFSD_MONOSEC) {
  lasttime = NFSD_MONOSEC;
  if (nfsd_call_servertimer != ((void*)0))
   (*nfsd_call_servertimer)();
 }
 callout_reset(&newnfsd_callout, nfscl_ticks, newnfs_timer, ((void*)0));
}
