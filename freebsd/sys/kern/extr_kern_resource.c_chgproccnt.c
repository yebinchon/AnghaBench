
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uidinfo {int ui_proccnt; } ;
typedef int rlim_t ;


 int chglimit (struct uidinfo*,int *,int,int ,char*) ;

int
chgproccnt(struct uidinfo *uip, int diff, rlim_t max)
{

 return (chglimit(uip, &uip->ui_proccnt, diff, max, "proccnt"));
}
