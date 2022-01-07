
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int lf_clearremotesys_iterator ;
 int lf_iteratelocks_sysid (int,int ,int *) ;

void
lf_clearremotesys(int sysid)
{

 KASSERT(sysid != 0, ("Can't clear local locks with F_UNLCKSYS"));
 lf_iteratelocks_sysid(sysid, lf_clearremotesys_iterator, ((void*)0));
}
