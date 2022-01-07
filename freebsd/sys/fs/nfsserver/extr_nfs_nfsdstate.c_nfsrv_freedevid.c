
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsdevice {int dummy; } ;


 int TAILQ_REMOVE (int *,struct nfsdevice*,int ) ;
 int nfsdev_list ;
 int nfsrv_devidhead ;
 int nfsrv_freeonedevid (struct nfsdevice*) ;

__attribute__((used)) static void
nfsrv_freedevid(struct nfsdevice *ds)
{

 TAILQ_REMOVE(&nfsrv_devidhead, ds, nfsdev_list);
 nfsrv_freeonedevid(ds);
}
