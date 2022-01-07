
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {int harvest_ticks; int sc_cdev; scalar_t__ pending_data_length; int harvest_callout; int discard_buffer_callout; int buf_cv; int dev_lock; int buf; } ;
struct make_dev_args {struct tpm_sc* mda_si_drv1; int mda_mode; int mda_gid; int mda_uid; int * mda_devsw; } ;


 int GID_WHEEL ;
 int M_TPM20 ;
 int M_WAITOK ;
 int TPM_BUFSIZE ;
 int TPM_CDEV_NAME ;
 int TPM_CDEV_PERM_FLAG ;
 int TPM_HARVEST_INTERVAL ;
 int UID_ROOT ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct tpm_sc*) ;
 int cv_init (int *,char*) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,int ) ;
 int malloc (int ,int ,int ) ;
 int sx_init (int *,char*) ;
 int tick ;
 int tpm20_cdevsw ;
 int tpm20_harvest ;
 int tpm20_release (struct tpm_sc*) ;

int
tpm20_init(struct tpm_sc *sc)
{
 struct make_dev_args args;
 int result;

 sc->buf = malloc(TPM_BUFSIZE, M_TPM20, M_WAITOK);
 sx_init(&sc->dev_lock, "TPM driver lock");
 cv_init(&sc->buf_cv, "TPM buffer cv");
 callout_init(&sc->discard_buffer_callout, 1);





 sc->pending_data_length = 0;

 make_dev_args_init(&args);
 args.mda_devsw = &tpm20_cdevsw;
 args.mda_uid = UID_ROOT;
 args.mda_gid = GID_WHEEL;
 args.mda_mode = TPM_CDEV_PERM_FLAG;
 args.mda_si_drv1 = sc;
 result = make_dev_s(&args, &sc->sc_cdev, TPM_CDEV_NAME);
 if (result != 0)
  tpm20_release(sc);

 return (result);

}
