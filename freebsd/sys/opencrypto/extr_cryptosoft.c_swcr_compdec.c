
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct uio {int uio_iovcnt; TYPE_1__* uio_iov; } ;
struct swcr_data {scalar_t__ sw_size; struct comp_algo* sw_cxf; } ;
struct mbuf {int dummy; } ;
struct cryptodesc {scalar_t__ crd_len; int crd_flags; int crd_skip; } ;
struct comp_algo {scalar_t__ (* compress ) (int *,scalar_t__,int **) ;scalar_t__ (* decompress ) (int *,scalar_t__,int **) ;} ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int iov_len; } ;


 int CRD_F_COMP ;
 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int EINVAL ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int crypto_copyback (int,scalar_t__,int ,scalar_t__,int *) ;
 int crypto_copydata (int,scalar_t__,int ,scalar_t__,int *) ;
 int free (int *,int ) ;
 int m_adj (struct mbuf*,int) ;
 int * malloc (scalar_t__,int ,int ) ;
 scalar_t__ stub1 (int *,scalar_t__,int **) ;
 scalar_t__ stub2 (int *,scalar_t__,int **) ;

__attribute__((used)) static int
swcr_compdec(struct cryptodesc *crd, struct swcr_data *sw,
    caddr_t buf, int flags)
{
 u_int8_t *data, *out;
 struct comp_algo *cxf;
 int adj;
 u_int32_t result;

 cxf = sw->sw_cxf;






 data = malloc(crd->crd_len, M_CRYPTO_DATA, M_NOWAIT);
 if (data == ((void*)0))
  return (EINVAL);
 crypto_copydata(flags, buf, crd->crd_skip, crd->crd_len, data);

 if (crd->crd_flags & CRD_F_COMP)
  result = cxf->compress(data, crd->crd_len, &out);
 else
  result = cxf->decompress(data, crd->crd_len, &out);

 free(data, M_CRYPTO_DATA);
 if (result == 0)
  return EINVAL;




 sw->sw_size = result;

 if (crd->crd_flags & CRD_F_COMP) {
  if (result >= crd->crd_len) {

   free(out, M_CRYPTO_DATA);
   return 0;
  }
 }

 crypto_copyback(flags, buf, crd->crd_skip, result, out);
 if (result < crd->crd_len) {
  adj = result - crd->crd_len;
  if (flags & CRYPTO_F_IMBUF) {
   adj = result - crd->crd_len;
   m_adj((struct mbuf *)buf, adj);
  } else if (flags & CRYPTO_F_IOV) {
   struct uio *uio = (struct uio *)buf;
   int ind;

   adj = crd->crd_len - result;
   ind = uio->uio_iovcnt - 1;

   while (adj > 0 && ind >= 0) {
    if (adj < uio->uio_iov[ind].iov_len) {
     uio->uio_iov[ind].iov_len -= adj;
     break;
    }

    adj -= uio->uio_iov[ind].iov_len;
    uio->uio_iov[ind].iov_len = 0;
    ind--;
    uio->uio_iovcnt--;
   }
  }
 }
 free(out, M_CRYPTO_DATA);
 return 0;
}
