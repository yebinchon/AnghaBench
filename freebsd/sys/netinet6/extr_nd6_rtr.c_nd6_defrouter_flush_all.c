
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int dummy; } ;
struct nd6_drhead {int dummy; } ;


 int ND6_WLOCK () ;
 int ND6_WUNLOCK () ;
 struct nd_defrouter* TAILQ_FIRST (struct nd6_drhead*) ;
 int TAILQ_INIT (struct nd6_drhead*) ;
 int TAILQ_REMOVE (struct nd6_drhead*,struct nd_defrouter*,int ) ;
 struct nd6_drhead V_nd6_defrouter ;
 int defrouter_del (struct nd_defrouter*) ;
 int defrouter_unlink (struct nd_defrouter*,struct nd6_drhead*) ;
 int dr_entry ;

void
nd6_defrouter_flush_all(void)
{
 struct nd_defrouter *dr;
 struct nd6_drhead drq;

 TAILQ_INIT(&drq);

 ND6_WLOCK();
 while ((dr = TAILQ_FIRST(&V_nd6_defrouter)) != ((void*)0))
  defrouter_unlink(dr, &drq);
 ND6_WUNLOCK();

 while ((dr = TAILQ_FIRST(&drq)) != ((void*)0)) {
  TAILQ_REMOVE(&drq, dr, dr_entry);
  defrouter_del(dr);
 }
}
