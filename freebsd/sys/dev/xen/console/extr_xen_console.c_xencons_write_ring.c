
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {struct xencons_interface* intf; } ;
struct xencons_interface {int out_cons; int out_prod; char* out; } ;
typedef int XENCONS_RING_IDX ;


 int KASSERT (int,char*) ;
 size_t MASK_XENCONS_IDX (int,char*) ;
 int mb () ;
 int wmb () ;
 int xencons_lock_assert (struct xencons_priv*) ;
 int xencons_notify_ring (struct xencons_priv*) ;

__attribute__((used)) static int
xencons_write_ring(struct xencons_priv *cons, const char *buffer,
    unsigned int size)
{
 struct xencons_interface *intf;
 XENCONS_RING_IDX wcons, wprod;
 int sent;

 intf = cons->intf;

 xencons_lock_assert(cons);

 wcons = intf->out_cons;
 wprod = intf->out_prod;

 mb();
 KASSERT((wprod - wcons) <= sizeof(intf->out),
  ("console send ring inconsistent"));

 for (sent = 0; sent < size; sent++, wprod++) {
  if ((wprod - wcons) >= sizeof(intf->out))
   break;
  intf->out[MASK_XENCONS_IDX(wprod, intf->out)] = buffer[sent];
 }

 wmb();
 intf->out_prod = wprod;

 xencons_notify_ring(cons);

 return (sent);
}
