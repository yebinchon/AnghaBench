
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_pic {intptr_t pic_xref; int pic_flags; int pic_child_lock; int pic_dev; } ;
typedef int device_t ;


 int MTX_SPIN ;
 int M_INTRNG ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int *,struct intr_pic*,int ) ;
 struct intr_pic* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pic_list ;
 int pic_list_lock ;
 struct intr_pic* pic_lookup_locked (int ,intptr_t,int) ;
 int pic_next ;

__attribute__((used)) static struct intr_pic *
pic_create(device_t dev, intptr_t xref, int flags)
{
 struct intr_pic *pic;

 mtx_lock(&pic_list_lock);
 pic = pic_lookup_locked(dev, xref, flags);
 if (pic != ((void*)0)) {
  mtx_unlock(&pic_list_lock);
  return (pic);
 }
 pic = malloc(sizeof(*pic), M_INTRNG, M_NOWAIT | M_ZERO);
 if (pic == ((void*)0)) {
  mtx_unlock(&pic_list_lock);
  return (((void*)0));
 }
 pic->pic_xref = xref;
 pic->pic_dev = dev;
 pic->pic_flags = flags;
 mtx_init(&pic->pic_child_lock, "pic child lock", ((void*)0), MTX_SPIN);
 SLIST_INSERT_HEAD(&pic_list, pic, pic_next);
 mtx_unlock(&pic_list_lock);

 return (pic);
}
