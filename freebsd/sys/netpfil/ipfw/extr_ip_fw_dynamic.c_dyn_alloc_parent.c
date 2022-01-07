
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef int uint16_t ;
struct dyn_parent {scalar_t__ expire; void* hashval; int rulenum; void* ruleid; void* parent; } ;


 int LOG_DEBUG ;
 int M_NOWAIT ;
 int M_ZERO ;
 int V_dyn_parent_zone ;
 scalar_t__ V_dyn_short_lifetime ;
 scalar_t__ last_log ;
 int log (int ,char*) ;
 scalar_t__ time_uptime ;
 struct dyn_parent* uma_zalloc (int ,int) ;

__attribute__((used)) static struct dyn_parent *
dyn_alloc_parent(void *parent, uint32_t ruleid, uint16_t rulenum,
    uint32_t hashval)
{
 struct dyn_parent *limit;

 limit = uma_zalloc(V_dyn_parent_zone, M_NOWAIT | M_ZERO);
 if (limit == ((void*)0)) {
  if (last_log != time_uptime) {
   last_log = time_uptime;
   log(LOG_DEBUG,
       "ipfw: Cannot allocate parent dynamic state, "
       "consider increasing "
       "net.inet.ip.fw.dyn_parent_max\n");
  }
  return (((void*)0));
 }

 limit->parent = parent;
 limit->ruleid = ruleid;
 limit->rulenum = rulenum;
 limit->hashval = hashval;
 limit->expire = time_uptime + V_dyn_short_lifetime;
 return (limit);
}
