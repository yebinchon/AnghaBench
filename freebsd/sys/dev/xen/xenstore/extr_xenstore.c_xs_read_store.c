
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u_int ;
typedef scalar_t__ XENSTORE_RING_IDX ;
struct TYPE_5__ {scalar_t__ rsp_cons; scalar_t__ rsp_prod; int rsp; } ;
struct TYPE_4__ {int xen_intr_handle; int ring_lock; } ;


 int EIO ;
 int EWOULDBLOCK ;
 int PCATCH ;
 int PDROP ;
 int mb () ;
 int memcpy (char*,char const*,unsigned int) ;
 int msleep (TYPE_2__*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rmb () ;
 int xen_intr_signal (int ) ;
 TYPE_2__* xen_store ;
 TYPE_1__ xs ;
 int xs_check_indexes (scalar_t__,scalar_t__) ;
 char* xs_get_input_chunk (scalar_t__,scalar_t__,int ,unsigned int*) ;

__attribute__((used)) static int
xs_read_store(void *tdata, unsigned len)
{
 XENSTORE_RING_IDX cons, prod;
 char *data = (char *)tdata;
 int error;

 while (len != 0) {
  u_int avail;
  const char *src;


  mtx_lock(&xs.ring_lock);
  cons = xen_store->rsp_cons;
  prod = xen_store->rsp_prod;
  if (cons == prod) {
   error = msleep(xen_store, &xs.ring_lock, PCATCH|PDROP,
       "xbread", 0);
   if (error && error != EWOULDBLOCK)
    return (error);
   continue;
  }
  mtx_unlock(&xs.ring_lock);


  if (!xs_check_indexes(cons, prod)) {
   xen_store->rsp_cons = xen_store->rsp_prod = 0;
   return (EIO);
  }

  src = xs_get_input_chunk(cons, prod, xen_store->rsp, &avail);
  if (avail > len)
   avail = len;





  rmb();

  memcpy(data, src, avail);
  data += avail;
  len -= avail;






  mb();
  xen_store->rsp_cons += avail;





  xen_intr_signal(xs.xen_intr_handle);
 }

 return (0);
}
