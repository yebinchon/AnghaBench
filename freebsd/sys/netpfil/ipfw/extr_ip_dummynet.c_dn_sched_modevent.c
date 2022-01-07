
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_alg {int dummy; } ;
typedef int module_t ;


 int EINVAL ;
 int MOD_LOAD ;
 int MOD_UNLOAD ;
 int load_dn_sched (struct dn_alg*) ;
 int unload_dn_sched (struct dn_alg*) ;

int
dn_sched_modevent(module_t mod, int cmd, void *arg)
{
 struct dn_alg *sch = arg;

 if (cmd == MOD_LOAD)
  return load_dn_sched(sch);
 else if (cmd == MOD_UNLOAD)
  return unload_dn_sched(sch);
 else
  return EINVAL;
}
