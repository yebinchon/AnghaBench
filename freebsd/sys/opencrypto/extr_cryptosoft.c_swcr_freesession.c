
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swcr_session {struct swcr_data* swcr_algorithms; int swcr_lock; } ;
struct swcr_data {int sw_alg; int sw_ictx; struct auth_hash* sw_axf; int sw_octx; int sw_klen; int sw_kschedule; struct enc_xform* sw_exf; } ;
struct enc_xform {int (* zerokey ) (int *) ;} ;
struct auth_hash {int ctxsize; } ;
typedef int device_t ;
typedef int crypto_session_t ;
 int M_CRYPTO_DATA ;
 int bzero (int ,int ) ;
 struct swcr_session* crypto_get_driver_session (int ) ;
 int explicit_bzero (int ,int ) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 size_t nitems (struct swcr_data*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
swcr_freesession(device_t dev, crypto_session_t cses)
{
 struct swcr_session *ses;
 struct swcr_data *swd;
 struct enc_xform *txf;
 struct auth_hash *axf;
 size_t i;

 ses = crypto_get_driver_session(cses);

 mtx_destroy(&ses->swcr_lock);
 for (i = 0; i < nitems(ses->swcr_algorithms); i++) {
  swd = &ses->swcr_algorithms[i];

  switch (swd->sw_alg) {
  case 148:
  case 165:
  case 153:
  case 151:
  case 128:
  case 141:
  case 156:
  case 159:
  case 158:
  case 157:
  case 152:
  case 144:
  case 150:
  case 161:
   txf = swd->sw_exf;

   if (swd->sw_kschedule)
    txf->zerokey(&(swd->sw_kschedule));
   break;

  case 146:
  case 138:
  case 135:
  case 133:
  case 131:
  case 129:
  case 140:
  case 143:
  case 160:
   axf = swd->sw_axf;

   if (swd->sw_ictx) {
    bzero(swd->sw_ictx, axf->ctxsize);
    free(swd->sw_ictx, M_CRYPTO_DATA);
   }
   if (swd->sw_octx) {
    bzero(swd->sw_octx, axf->ctxsize);
    free(swd->sw_octx, M_CRYPTO_DATA);
   }
   break;

  case 145:
  case 137:
   axf = swd->sw_axf;

   if (swd->sw_ictx) {
    bzero(swd->sw_ictx, axf->ctxsize);
    free(swd->sw_ictx, M_CRYPTO_DATA);
   }
   if (swd->sw_octx) {
    bzero(swd->sw_octx, swd->sw_klen);
    free(swd->sw_octx, M_CRYPTO_DATA);
   }
   break;

  case 155:
  case 154:
  case 147:
  case 142:
  case 139:
  case 136:
  case 134:
  case 132:
  case 130:
  case 164:
  case 163:
  case 162:
   axf = swd->sw_axf;

   if (swd->sw_ictx) {
    explicit_bzero(swd->sw_ictx, axf->ctxsize);
    free(swd->sw_ictx, M_CRYPTO_DATA);
   }
   break;

  case 149:

   break;
  }
 }
}
