
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int MTX_DEF ;
 int M_CACHE ;
 int NFDCACHE ;
 int fdesc_hashmtx ;
 int fdhash ;
 int fdhashtbl ;
 int hashinit (int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;

int
fdesc_init(struct vfsconf *vfsp)
{

 mtx_init(&fdesc_hashmtx, "fdescfs_hash", ((void*)0), MTX_DEF);
 fdhashtbl = hashinit(NFDCACHE, M_CACHE, &fdhash);
 return (0);
}
