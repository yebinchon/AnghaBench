
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int dummy; } ;
typedef int device_t ;


 int PCI_POWERSTATE_D3 ;
 int agg_lock (struct agg_info*) ;
 int agg_power (struct agg_info*,int ) ;
 int agg_unlock (struct agg_info*) ;
 struct agg_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
agg_shutdown(device_t dev)
{
 struct agg_info *ess = pcm_getdevinfo(dev);

 agg_lock(ess);
 agg_power(ess, PCI_POWERSTATE_D3);
 agg_unlock(ess);

 return 0;
}
