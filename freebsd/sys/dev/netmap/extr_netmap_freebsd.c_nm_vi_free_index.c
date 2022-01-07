
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int active; int* index; int lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nm_prerr (char*,int) ;
 TYPE_1__ nm_vi_indices ;

__attribute__((used)) static void
nm_vi_free_index(uint8_t val)
{
 int i, lim;

 mtx_lock(&nm_vi_indices.lock);
 lim = nm_vi_indices.active;
 for (i = 0; i < lim; i++) {
  if (nm_vi_indices.index[i] == val) {

   int tmp = nm_vi_indices.index[lim-1];
   nm_vi_indices.index[lim-1] = val;
   nm_vi_indices.index[i] = tmp;
   nm_vi_indices.active--;
   break;
  }
 }
 if (lim == nm_vi_indices.active)
  nm_prerr("Index %u not found", val);
 mtx_unlock(&nm_vi_indices.lock);
}
