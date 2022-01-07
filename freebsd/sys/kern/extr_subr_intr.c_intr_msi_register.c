
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct intr_pic {int dummy; } ;
typedef int * device_t ;


 int EINVAL ;
 int ENOMEM ;
 int FLAG_MSI ;
 int debugf (char*,struct intr_pic*,int ,int *,int ) ;
 int device_get_nameunit (int *) ;
 struct intr_pic* pic_create (int *,intptr_t,int ) ;

int
intr_msi_register(device_t dev, intptr_t xref)
{
 struct intr_pic *pic;

 if (dev == ((void*)0))
  return (EINVAL);
 pic = pic_create(dev, xref, FLAG_MSI);
 if (pic == ((void*)0))
  return (ENOMEM);

 debugf("PIC %p registered for %s <dev %p, xref %jx>\n", pic,
     device_get_nameunit(dev), dev, (uintmax_t)xref);
 return (0);
}
