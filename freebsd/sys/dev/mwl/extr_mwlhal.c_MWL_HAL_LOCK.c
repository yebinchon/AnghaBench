
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_hal_priv {int mh_mtx; } ;


 int mtx_lock (int *) ;

__attribute__((used)) static __inline void
MWL_HAL_LOCK(struct mwl_hal_priv *mh)
{
 mtx_lock(&mh->mh_mtx);
}
