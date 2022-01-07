
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct celockstate {int ** vlp; } ;


 int MPASS (int) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
cache_unlock_vnodes_cel(struct celockstate *cel)
{

 MPASS(cel->vlp[0] != ((void*)0) || cel->vlp[1] != ((void*)0));

 if (cel->vlp[0] != ((void*)0))
  mtx_unlock(cel->vlp[0]);
 if (cel->vlp[1] != ((void*)0))
  mtx_unlock(cel->vlp[1]);
 if (cel->vlp[2] != ((void*)0))
  mtx_unlock(cel->vlp[2]);
}
