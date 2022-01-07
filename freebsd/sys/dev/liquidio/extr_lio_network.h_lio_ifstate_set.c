
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio {int ifstate; } ;


 int atomic_load_acq_int (int *) ;
 int atomic_store_rel_int (int *,int) ;

__attribute__((used)) static inline void
lio_ifstate_set(struct lio *lio, int state_flag)
{

 atomic_store_rel_int(&lio->ifstate,
        (atomic_load_acq_int(&lio->ifstate) | state_flag));
}
