
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t sched_nr; } ;
struct dn_schk {TYPE_1__ sch; } ;


 int DNHT_KEY_IS_OBJ ;

__attribute__((used)) static int
schk_match(void *obj, uintptr_t key, int flags, void *_arg)
{
 struct dn_schk *s = (struct dn_schk *)obj;
 int i = !(flags & DNHT_KEY_IS_OBJ) ? key :
  ((struct dn_schk *)key)->sch.sched_nr;
 return (s->sch.sched_nr == i);
}
