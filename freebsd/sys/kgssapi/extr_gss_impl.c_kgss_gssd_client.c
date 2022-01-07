
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT ;


 int CLNT_ACQUIRE (int *) ;
 int * kgss_gssd_handle ;
 int kgss_gssd_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

CLIENT *
kgss_gssd_client(void)
{
 CLIENT *cl;

 mtx_lock(&kgss_gssd_lock);
 cl = kgss_gssd_handle;
 if (cl != ((void*)0))
  CLNT_ACQUIRE(cl);
 mtx_unlock(&kgss_gssd_lock);
 return (cl);
}
