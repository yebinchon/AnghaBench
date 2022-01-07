
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_global_lock ;
 int nlm_next_sysid ;

uint32_t
nlm_acquire_next_sysid(void)
{
 uint32_t next_sysid;

 mtx_lock(&nlm_global_lock);
 next_sysid = nlm_next_sysid++;
 mtx_unlock(&nlm_global_lock);
 return (next_sysid);
}
