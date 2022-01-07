
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_spectral_state {int spectral_enable_after_reset; int spectral_state; } ;
struct ath_softc {int sc_dospectral; int sc_dev; int sc_ah; struct ath_spectral_state* sc_spectral; } ;
struct ath_diag {unsigned int ad_id; int ad_in_size; int ad_out_size; int ad_out_data; int ad_in_data; } ;
typedef int peout ;
typedef int HAL_SPECTRAL_PARAM ;


 int ATH_DIAG_DYN ;
 unsigned int ATH_DIAG_ID ;
 int ATH_DIAG_IN ;
 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int HAL_PM_AWAKE ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;







 int ath_hal_spectral_configure (int ,int *) ;
 int ath_hal_spectral_get_config (int ,int *) ;
 int ath_hal_spectral_start (int ) ;
 int ath_hal_spectral_stop (int ) ;
 int ath_hal_spectral_supported (int ) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int copyin (int ,void*,int) ;
 scalar_t__ copyout (void*,int ,int) ;
 int device_printf (int ,char*,...) ;
 int free (void*,int ) ;
 void* malloc (int,int ,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

int
ath_ioctl_spectral(struct ath_softc *sc, struct ath_diag *ad)
{
 unsigned int id = ad->ad_id & ATH_DIAG_ID;
 void *indata = ((void*)0);
 void *outdata = ((void*)0);
 u_int32_t insize = ad->ad_in_size;
 u_int32_t outsize = ad->ad_out_size;
 int error = 0;
 HAL_SPECTRAL_PARAM peout;
 HAL_SPECTRAL_PARAM *pe;
 struct ath_spectral_state *ss = sc->sc_spectral;
 int val;

 if (! ath_hal_spectral_supported(sc->sc_ah))
  return (EINVAL);

 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ATH_UNLOCK(sc);

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
  case 131:
   memset(&peout, 0, sizeof(peout));
   outsize = sizeof(HAL_SPECTRAL_PARAM);
   ath_hal_spectral_get_config(sc->sc_ah, &peout);
   pe = (HAL_SPECTRAL_PARAM *) outdata;
   memcpy(pe, &peout, sizeof(*pe));
   break;
  case 130:
   if (insize < sizeof(HAL_SPECTRAL_PARAM)) {
    error = EINVAL;
    break;
   }
   pe = (HAL_SPECTRAL_PARAM *) indata;
   ath_hal_spectral_configure(sc->sc_ah, pe);

   ath_hal_spectral_get_config(sc->sc_ah,
       &ss->spectral_state);
   break;
  case 129:
   ath_hal_spectral_configure(sc->sc_ah,
       &ss->spectral_state);
   (void) ath_hal_spectral_start(sc->sc_ah);
   sc->sc_dospectral = 1;

   break;
  case 128:
   (void) ath_hal_spectral_stop(sc->sc_ah);
   sc->sc_dospectral = 0;

   break;
  case 132:
   if (insize < sizeof(int)) {
    device_printf(sc->sc_dev, "%d != %d\n",
        insize,
        (int) sizeof(int));
    error = EINVAL;
    break;
   }
   if (indata == ((void*)0)) {
    device_printf(sc->sc_dev, "indata=NULL\n");
    error = EINVAL;
    break;
   }
   val = * ((int *) indata);
   if (val == 0)
    ss->spectral_enable_after_reset = 0;
   else
    ss->spectral_enable_after_reset = 1;
   break;
  case 133:

  case 134:

  break;
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
 ATH_LOCK(sc);
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);

 return (error);
}
