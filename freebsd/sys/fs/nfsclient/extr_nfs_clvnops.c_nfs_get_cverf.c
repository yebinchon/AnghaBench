
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qval; void** lval; } ;
typedef TYPE_1__ nfsquad_t ;


 void* arc4random () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfs_cverf_mtx ;

__attribute__((used)) static nfsquad_t
nfs_get_cverf(void)
{
 static nfsquad_t cverf;
 nfsquad_t ret;
 static int cverf_initialized = 0;

 mtx_lock(&nfs_cverf_mtx);
 if (cverf_initialized == 0) {
  cverf.lval[0] = arc4random();
  cverf.lval[1] = arc4random();
  cverf_initialized = 1;
 } else
  cverf.qval++;
 ret = cverf;
 mtx_unlock(&nfs_cverf_mtx);

 return (ret);
}
