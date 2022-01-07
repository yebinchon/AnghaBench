
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u_int ;
typedef scalar_t__ XENSTORE_RING_IDX ;
struct TYPE_5__ {scalar_t__ req_cons; scalar_t__ req_prod; int req; } ;
struct TYPE_4__ {int xen_intr_handle; int ring_lock; int request_mutex; } ;


 int EIO ;
 int EWOULDBLOCK ;
 int PCATCH ;
 int PDROP ;
 int SX_XLOCKED ;
 scalar_t__ XENSTORE_RING_SIZE ;
 int memcpy (void*,char const*,unsigned int) ;
 int msleep (TYPE_2__*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_assert (int *,int ) ;
 int wmb () ;
 int xen_intr_signal (int ) ;
 TYPE_2__* xen_store ;
 TYPE_1__ xs ;
 int xs_check_indexes (scalar_t__,scalar_t__) ;
 void* xs_get_output_chunk (scalar_t__,scalar_t__,int ,unsigned int*) ;

__attribute__((used)) static int
xs_write_store(const void *tdata, unsigned len)
{
 XENSTORE_RING_IDX cons, prod;
 const char *data = (const char *)tdata;
 int error;

 sx_assert(&xs.request_mutex, SX_XLOCKED);
 while (len != 0) {
  void *dst;
  u_int avail;


  mtx_lock(&xs.ring_lock);
  cons = xen_store->req_cons;
  prod = xen_store->req_prod;
  if ((prod - cons) == XENSTORE_RING_SIZE) {
   error = msleep(xen_store, &xs.ring_lock, PCATCH|PDROP,
        "xbwrite", 0);
   if (error && error != EWOULDBLOCK)
    return (error);


   continue;
  }
  mtx_unlock(&xs.ring_lock);


  if (!xs_check_indexes(cons, prod)) {
   xen_store->req_cons = xen_store->req_prod = 0;
   return (EIO);
  }

  dst = xs_get_output_chunk(cons, prod, xen_store->req, &avail);
  if (avail > len)
   avail = len;

  memcpy(dst, data, avail);
  data += avail;
  len -= avail;







  wmb();
  xen_store->req_prod += avail;





  xen_intr_signal(xs.xen_intr_handle);
 }

 return (0);
}
