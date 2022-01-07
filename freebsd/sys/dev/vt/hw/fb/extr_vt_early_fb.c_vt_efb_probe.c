
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int dummy; } ;
typedef int phandle_t ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 scalar_t__ OF_getproplen (int,char*) ;
 int vt_efb_get_fbnode () ;

__attribute__((used)) static int
vt_efb_probe(struct vt_device *vd)
{
 phandle_t node;

 node = vt_efb_get_fbnode();
 if (node == -1)
  return (CN_DEAD);

 if ((OF_getproplen(node, "height") <= 0) ||
     (OF_getproplen(node, "width") <= 0) ||
     (OF_getproplen(node, "depth") <= 0) ||
     (OF_getproplen(node, "linebytes") <= 0))
  return (CN_DEAD);

 return (CN_INTERNAL);
}
