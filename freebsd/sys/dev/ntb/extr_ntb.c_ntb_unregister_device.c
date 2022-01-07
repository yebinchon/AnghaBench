
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {int ctx_lock; int dev; struct ntb_child* next; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int device_delete_child (int ,int ) ;
 struct ntb_child** device_get_softc (int ) ;
 int free (struct ntb_child*,int ) ;
 int rm_destroy (int *) ;

int
ntb_unregister_device(device_t dev)
{
 struct ntb_child **cpp = device_get_softc(dev);
 struct ntb_child *nc;
 int error = 0;

 while ((nc = *cpp) != ((void*)0)) {
  *cpp = (*cpp)->next;
  error = device_delete_child(dev, nc->dev);
  if (error)
   break;
  rm_destroy(&nc->ctx_lock);
  free(nc, M_DEVBUF);
 }
 return (error);
}
