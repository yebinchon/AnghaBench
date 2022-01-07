
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gsched {int gs_refs; } ;


 int atomic_add_int (int *,int) ;

__attribute__((used)) static inline void
g_gsched_ref(struct g_gsched *gsp)
{

 atomic_add_int(&gsp->gs_refs, 1);
}
