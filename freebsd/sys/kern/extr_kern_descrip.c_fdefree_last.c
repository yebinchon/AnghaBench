
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedescent {int fde_caps; } ;


 int filecaps_free (int *) ;

__attribute__((used)) static inline void
fdefree_last(struct filedescent *fde)
{

 filecaps_free(&fde->fde_caps);
}
