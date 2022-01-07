
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int dummy; } ;
struct nd6_drhead {int dummy; } ;


 int ND6_WLOCK_ASSERT () ;
 int TAILQ_INSERT_TAIL (struct nd6_drhead*,struct nd_defrouter*,int ) ;
 int TAILQ_REMOVE (int *,struct nd_defrouter*,int ) ;
 int V_nd6_defrouter ;
 int V_nd6_list_genid ;
 int dr_entry ;

__attribute__((used)) static void
defrouter_unlink(struct nd_defrouter *dr, struct nd6_drhead *drq)
{

 ND6_WLOCK_ASSERT();

 TAILQ_REMOVE(&V_nd6_defrouter, dr, dr_entry);
 V_nd6_list_genid++;
 if (drq != ((void*)0))
  TAILQ_INSERT_TAIL(drq, dr, dr_entry);
}
