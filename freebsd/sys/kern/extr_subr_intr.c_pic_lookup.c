
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_pic {int dummy; } ;
typedef int device_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pic_list_lock ;
 struct intr_pic* pic_lookup_locked (int ,intptr_t,int) ;

__attribute__((used)) static struct intr_pic *
pic_lookup(device_t dev, intptr_t xref, int flags)
{
 struct intr_pic *pic;

 mtx_lock(&pic_list_lock);
 pic = pic_lookup_locked(dev, xref, flags);
 mtx_unlock(&pic_list_lock);
 return (pic);
}
