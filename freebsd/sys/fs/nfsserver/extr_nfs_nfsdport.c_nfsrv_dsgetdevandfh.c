
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int M_TEMP ;
 int M_WAITOK ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 int nfsrv_dsgetsockmnt (struct vnode*,int ,char*,int*,int*,int *,int *,int *,char*,int *,int *,int *,int *,int *,int *) ;

int
nfsrv_dsgetdevandfh(struct vnode *vp, NFSPROC_T *p, int *mirrorcntp,
    fhandle_t *fhp, char *devid)
{
 int buflen, error;
 char *buf;

 buflen = 1024;
 buf = malloc(buflen, M_TEMP, M_WAITOK);
 error = nfsrv_dsgetsockmnt(vp, 0, buf, &buflen, mirrorcntp, p, ((void*)0),
     fhp, devid, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 free(buf, M_TEMP);
 return (error);
}
