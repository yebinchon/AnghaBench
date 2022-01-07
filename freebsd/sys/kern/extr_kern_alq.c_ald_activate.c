
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct alq*,int ) ;
 int ald_active ;
 int aq_act ;
 int wakeup (int *) ;

__attribute__((used)) static void
ald_activate(struct alq *alq)
{
 LIST_INSERT_HEAD(&ald_active, alq, aq_act);
 wakeup(&ald_active);
}
