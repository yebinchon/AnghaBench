
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_pic {int dummy; } ;
typedef int * device_t ;


 int FLAG_PIC ;
 int debugf (char*,struct intr_pic*,int ,int *,intptr_t) ;
 int device_get_nameunit (int *) ;
 struct intr_pic* pic_create (int *,intptr_t,int ) ;

struct intr_pic *
intr_pic_register(device_t dev, intptr_t xref)
{
 struct intr_pic *pic;

 if (dev == ((void*)0))
  return (((void*)0));
 pic = pic_create(dev, xref, FLAG_PIC);
 if (pic == ((void*)0))
  return (((void*)0));

 debugf("PIC %p registered for %s <dev %p, xref %x>\n", pic,
     device_get_nameunit(dev), dev, xref);
 return (pic);
}
