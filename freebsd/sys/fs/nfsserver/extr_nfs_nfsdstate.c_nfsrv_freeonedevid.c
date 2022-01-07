
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsdevice {struct nfsdevice* nfsdev_host; struct nfsdevice* nfsdev_flexaddr; struct nfsdevice* nfsdev_fileaddr; int ** nfsdev_dsdir; int * nfsdev_dvp; } ;


 int M_NFSDSTATE ;
 int atomic_add_int (int *,int) ;
 int free (struct nfsdevice*,int ) ;
 int nfsrv_devidcnt ;
 int nfsrv_dsdirsize ;
 int vrele (int *) ;

void
nfsrv_freeonedevid(struct nfsdevice *ds)
{
 int i;

 atomic_add_int(&nfsrv_devidcnt, -1);
 vrele(ds->nfsdev_dvp);
 for (i = 0; i < nfsrv_dsdirsize; i++)
  if (ds->nfsdev_dsdir[i] != ((void*)0))
   vrele(ds->nfsdev_dsdir[i]);
 free(ds->nfsdev_fileaddr, M_NFSDSTATE);
 free(ds->nfsdev_flexaddr, M_NFSDSTATE);
 free(ds->nfsdev_host, M_NFSDSTATE);
 free(ds, M_NFSDSTATE);
}
