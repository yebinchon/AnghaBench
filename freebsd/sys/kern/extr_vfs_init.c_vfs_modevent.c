
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;
typedef int module_t ;


 int EOPNOTSUPP ;


 int vfs_register (struct vfsconf*) ;
 int vfs_unregister (struct vfsconf*) ;

int
vfs_modevent(module_t mod, int type, void *data)
{
 struct vfsconf *vfc;
 int error = 0;

 vfc = (struct vfsconf *)data;

 switch (type) {
 case 129:
  if (vfc)
   error = vfs_register(vfc);
  break;

 case 128:
  if (vfc)
   error = vfs_unregister(vfc);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
