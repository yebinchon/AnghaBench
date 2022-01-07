
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xvfsp ;
struct xvfsconf {int * vfc_next; int * vfc_vfsops; int vfc_flags; int vfc_refcount; int vfc_typenum; int vfc_name; } ;
struct vfsconf {int vfc_flags; int vfc_refcount; int vfc_typenum; int vfc_name; } ;
struct sysctl_req {int dummy; } ;


 int SYSCTL_OUT (struct sysctl_req*,struct xvfsconf*,int) ;
 int bzero (struct xvfsconf*,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
vfsconf2x(struct sysctl_req *req, struct vfsconf *vfsp)
{
 struct xvfsconf xvfsp;

 bzero(&xvfsp, sizeof(xvfsp));
 strcpy(xvfsp.vfc_name, vfsp->vfc_name);
 xvfsp.vfc_typenum = vfsp->vfc_typenum;
 xvfsp.vfc_refcount = vfsp->vfc_refcount;
 xvfsp.vfc_flags = vfsp->vfc_flags;




 xvfsp.vfc_vfsops = ((void*)0);
 xvfsp.vfc_next = ((void*)0);
 return (SYSCTL_OUT(req, &xvfsp, sizeof(xvfsp)));
}
