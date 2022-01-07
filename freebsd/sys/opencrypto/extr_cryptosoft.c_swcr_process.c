
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swcr_session {int swcr_lock; struct swcr_data* swcr_algorithms; } ;
struct swcr_data {scalar_t__ sw_alg; scalar_t__ sw_size; } ;
struct cryptop {int crp_etype; int crp_olen; int crp_flags; int * crp_buf; struct cryptodesc* crp_desc; int crp_session; } ;
struct cryptodesc {scalar_t__ crd_alg; struct cryptodesc* crd_next; } ;
typedef int device_t ;
 int EINVAL ;
 int crypto_done (struct cryptop*) ;
 struct swcr_session* crypto_get_driver_session (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 size_t nitems (struct swcr_data*) ;
 int swcr_authcompute (struct cryptodesc*,struct swcr_data*,int *,int ) ;
 int swcr_authenc (struct cryptop*) ;
 int swcr_compdec (struct cryptodesc*,struct swcr_data*,int *,int ) ;
 int swcr_encdec (struct cryptodesc*,struct swcr_data*,int *,int ) ;

__attribute__((used)) static int
swcr_process(device_t dev, struct cryptop *crp, int hint)
{
 struct swcr_session *ses = ((void*)0);
 struct cryptodesc *crd;
 struct swcr_data *sw;
 size_t i;


 if (crp == ((void*)0))
  return EINVAL;

 if (crp->crp_desc == ((void*)0) || crp->crp_buf == ((void*)0)) {
  crp->crp_etype = EINVAL;
  goto done;
 }

 ses = crypto_get_driver_session(crp->crp_session);
 mtx_lock(&ses->swcr_lock);


 for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
  for (i = 0; i < nitems(ses->swcr_algorithms) &&
      ses->swcr_algorithms[i].sw_alg != crd->crd_alg; i++)
   ;


  if (i == nitems(ses->swcr_algorithms)) {
   crp->crp_etype = EINVAL;
   goto done;
  }
  sw = &ses->swcr_algorithms[i];
  switch (sw->sw_alg) {
  case 148:
  case 165:
  case 153:
  case 151:
  case 128:
  case 141:
  case 156:
  case 159:
  case 152:
  case 150:
   if ((crp->crp_etype = swcr_encdec(crd, sw,
       crp->crp_buf, crp->crp_flags)) != 0)
    goto done;
   break;
  case 144:
   crp->crp_etype = 0;
   break;
  case 146:
  case 138:
  case 135:
  case 133:
  case 131:
  case 129:
  case 140:
  case 143:
  case 145:
  case 137:
  case 147:
  case 139:
  case 136:
  case 134:
  case 132:
  case 130:
  case 155:
  case 154:
  case 142:
   if ((crp->crp_etype = swcr_authcompute(crd, sw,
       crp->crp_buf, crp->crp_flags)) != 0)
    goto done;
   break;

  case 158:
  case 157:
  case 164:
  case 163:
  case 162:
  case 161:
  case 160:
   crp->crp_etype = swcr_authenc(crp);
   goto done;

  case 149:
   if ((crp->crp_etype = swcr_compdec(crd, sw,
       crp->crp_buf, crp->crp_flags)) != 0)
    goto done;
   else
    crp->crp_olen = (int)sw->sw_size;
   break;

  default:

   crp->crp_etype = EINVAL;
   goto done;
  }
 }

done:
 if (ses)
  mtx_unlock(&ses->swcr_lock);
 crypto_done(crp);
 return 0;
}
