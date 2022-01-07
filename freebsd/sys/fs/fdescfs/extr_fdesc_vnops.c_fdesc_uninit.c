
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int M_CACHE ;
 int fdesc_hashmtx ;
 int fdhash ;
 int fdhashtbl ;
 int hashdestroy (int ,int ,int ) ;
 int mtx_destroy (int *) ;

int
fdesc_uninit(struct vfsconf *vfsp)
{

 hashdestroy(fdhashtbl, M_CACHE, fdhash);
 mtx_destroy(&fdesc_hashmtx);
 return (0);
}
