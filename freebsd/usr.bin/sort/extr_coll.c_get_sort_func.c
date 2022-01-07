
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_mods {scalar_t__ Vflag; scalar_t__ Rflag; scalar_t__ Mflag; scalar_t__ gflag; scalar_t__ hflag; scalar_t__ nflag; } ;
typedef int cmpcoll_t ;


 int gnumcoll ;
 int hnumcoll ;
 int monthcoll ;
 int numcoll ;
 int randomcoll ;
 int versioncoll ;
 int wstrcoll ;

cmpcoll_t
get_sort_func(struct sort_mods *sm)
{

 if (sm->nflag)
  return (numcoll);
 else if (sm->hflag)
  return (hnumcoll);
 else if (sm->gflag)
  return (gnumcoll);
 else if (sm->Mflag)
  return (monthcoll);
 else if (sm->Rflag)
  return (randomcoll);
 else if (sm->Vflag)
  return (versioncoll);
 else
  return (wstrcoll);
}
