
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int aq_flags; } ;


 int AQ_ACTIVE ;
 int LIST_REMOVE (struct alq*,int ) ;
 int aq_act ;

__attribute__((used)) static void
ald_deactivate(struct alq *alq)
{
 LIST_REMOVE(alq, aq_act);
 alq->aq_flags &= ~AQ_ACTIVE;
}
