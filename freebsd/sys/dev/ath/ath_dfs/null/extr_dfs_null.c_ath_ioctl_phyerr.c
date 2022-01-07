
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_softc {int sc_ah; } ;
struct ath_diag {unsigned int ad_id; int ad_in_size; int ad_out_size; int ad_out_data; int ad_in_data; } ;
typedef int peout ;
typedef int HAL_PHYERR_PARAM ;


 int ATH_DIAG_DYN ;
 unsigned int ATH_DIAG_ID ;
 int ATH_DIAG_IN ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_TEMP ;
 int ath_hal_enabledfs (int ,int *) ;
 int ath_hal_getdfsthresh (int ,int *) ;
 int copyin (int ,void*,int) ;
 scalar_t__ copyout (void*,int ,int) ;
 int free (void*,int ) ;
 void* malloc (int,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

int
ath_ioctl_phyerr(struct ath_softc *sc, struct ath_diag *ad)
{
 unsigned int id = ad->ad_id & ATH_DIAG_ID;
 void *indata = ((void*)0);
 void *outdata = ((void*)0);
 u_int32_t insize = ad->ad_in_size;
 u_int32_t outsize = ad->ad_out_size;
 int error = 0;
 HAL_PHYERR_PARAM peout;
 HAL_PHYERR_PARAM *pe;

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







  outdata = malloc(outsize, M_TEMP, M_NOWAIT);
  if (outdata == ((void*)0)) {
   error = ENOMEM;
   goto bad;
  }
 }
 switch (id) {
  case 128:
   if (insize < sizeof(HAL_PHYERR_PARAM)) {
    error = EINVAL;
    break;
   }
   pe = (HAL_PHYERR_PARAM *) indata;
   ath_hal_enabledfs(sc->sc_ah, pe);
   break;
  case 129:
   memset(&peout, 0, sizeof(peout));
   outsize = sizeof(HAL_PHYERR_PARAM);
   ath_hal_getdfsthresh(sc->sc_ah, &peout);
   pe = (HAL_PHYERR_PARAM *) outdata;
   memcpy(pe, &peout, sizeof(*pe));
   break;
  default:
   error = EINVAL;
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
