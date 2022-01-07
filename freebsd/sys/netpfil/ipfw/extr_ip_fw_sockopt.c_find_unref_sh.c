
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_sopt_handler {int refcnt; int version; int opcode; } ;


 int CTL3_LOCK () ;
 int CTL3_UNLOCK () ;
 int KASSERT (int ,char*) ;
 int ctl3_refct ;
 struct ipfw_sopt_handler* find_sh (int ,int ,int *) ;

__attribute__((used)) static void
find_unref_sh(struct ipfw_sopt_handler *psh)
{
 struct ipfw_sopt_handler *sh;

 CTL3_LOCK();
 sh = find_sh(psh->opcode, psh->version, ((void*)0));
 KASSERT(sh != ((void*)0), ("ctl3 handler disappeared"));
 sh->refcnt--;
 ctl3_refct--;
 CTL3_UNLOCK();
}
