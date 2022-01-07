
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {uintptr_t sched_nr; } ;
struct dn_schk {TYPE_1__ sch; } ;


 int DNHT_KEY_IS_OBJ ;

__attribute__((used)) static uint32_t
schk_hash(uintptr_t key, int flags, void *_arg)
{
 uint32_t i = !(flags & DNHT_KEY_IS_OBJ) ? key :
  ((struct dn_schk *)key)->sch.sched_nr;
 return ( (i>>8)^(i>>4)^i );
}
