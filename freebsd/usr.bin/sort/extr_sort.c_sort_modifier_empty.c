
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_mods {scalar_t__ fflag; scalar_t__ dflag; scalar_t__ hflag; scalar_t__ Rflag; scalar_t__ rflag; scalar_t__ gflag; scalar_t__ nflag; scalar_t__ Vflag; scalar_t__ Mflag; } ;



__attribute__((used)) static bool
sort_modifier_empty(struct sort_mods *sm)
{

 if (sm == ((void*)0))
  return (1);
 return (!(sm->Mflag || sm->Vflag || sm->nflag || sm->gflag ||
     sm->rflag || sm->Rflag || sm->hflag || sm->dflag || sm->fflag));
}
