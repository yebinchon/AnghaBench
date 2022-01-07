
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_mode; int mda_gid; int mda_uid; int * mda_devsw; } ;
struct cdev {int dummy; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int GID_WHEEL ;
 int MTX_SPIN ;
 int UID_ROOT ;
 int kcov_cdevsw ;
 int kcov_lock ;
 int kcov_thread_dtor ;
 int make_dev_args_init (struct make_dev_args*) ;
 scalar_t__ make_dev_s (struct make_dev_args*,struct cdev**,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,char*) ;
 int thread_dtor ;

__attribute__((used)) static void
kcov_init(const void *unused)
{
 struct make_dev_args args;
 struct cdev *dev;

 mtx_init(&kcov_lock, "kcov lock", ((void*)0), MTX_SPIN);

 make_dev_args_init(&args);
 args.mda_devsw = &kcov_cdevsw;
 args.mda_uid = UID_ROOT;
 args.mda_gid = GID_WHEEL;
 args.mda_mode = 0600;
 if (make_dev_s(&args, &dev, "kcov") != 0) {
  printf("%s", "Failed to create kcov device");
  return;
 }

 EVENTHANDLER_REGISTER(thread_dtor, kcov_thread_dtor, ((void*)0),
     EVENTHANDLER_PRI_ANY);
}
