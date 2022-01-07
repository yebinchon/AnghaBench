
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_hal_vap {int * mh; } ;



void
mwl_hal_delvap(struct mwl_hal_vap *vap)
{

 vap->mh = ((void*)0);
}
