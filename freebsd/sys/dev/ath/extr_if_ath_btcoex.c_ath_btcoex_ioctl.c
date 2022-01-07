
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ath_softc {int dummy; } ;
struct ath_diag {unsigned int ad_id; scalar_t__ ad_in_size; scalar_t__ ad_out_size; int ad_out_data; int ad_in_data; } ;


 int ATH_DIAG_DYN ;
 unsigned int ATH_DIAG_ID ;
 int ATH_DIAG_IN ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int copyin (int ,void*,scalar_t__) ;
 scalar_t__ copyout (void*,int ,scalar_t__) ;
 int free (void*,int ) ;
 void* malloc (scalar_t__,int ,int) ;

int
ath_btcoex_ioctl(struct ath_softc *sc, struct ath_diag *ad)
{
 unsigned int id = ad->ad_id & ATH_DIAG_ID;
 void *indata = ((void*)0);
 void *outdata = ((void*)0);
 u_int32_t insize = ad->ad_in_size;
 u_int32_t outsize = ad->ad_out_size;
 int error = 0;


 if (ad->ad_id & ATH_DIAG_IN) {



  indata = malloc(insize, M_TEMP, M_NOWAIT);
  if (indata == ((void*)0)) {
   error = ENOMEM;
   goto bad;
  }
  error = copyin(ad->ad_in_data, indata, insize);
  if (error)
   goto bad;
 }
 if (ad->ad_id & ATH_DIAG_DYN) {







  outdata = malloc(outsize, M_TEMP, M_NOWAIT | M_ZERO);
  if (outdata == ((void*)0)) {
   error = ENOMEM;
   goto bad;
  }
 }
 switch (id) {
  default:
   error = EINVAL;
   goto bad;
 }
 if (outsize < ad->ad_out_size)
  ad->ad_out_size = outsize;
 if (outdata && copyout(outdata, ad->ad_out_data, ad->ad_out_size))
  error = EFAULT;
bad:
 if ((ad->ad_id & ATH_DIAG_IN) && indata != ((void*)0))
  free(indata, M_TEMP);
 if ((ad->ad_id & ATH_DIAG_DYN) && outdata != ((void*)0))
  free(outdata, M_TEMP);
 return (error);
}
