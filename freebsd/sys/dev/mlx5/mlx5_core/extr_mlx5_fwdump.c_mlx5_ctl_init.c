
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_flags; int mda_mode; int mda_gid; int mda_uid; int * mda_devsw; } ;


 int GID_OPERATOR ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int UID_ROOT ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*) ;
 int mlx5_ctl_dev ;
 int mlx5_ctl_devsw ;

int
mlx5_ctl_init(void)
{
 struct make_dev_args mda;
 int error;

 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_WAITOK | MAKEDEV_CHECKNAME;
 mda.mda_devsw = &mlx5_ctl_devsw;
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_OPERATOR;
 mda.mda_mode = 0640;
 error = make_dev_s(&mda, &mlx5_ctl_dev, "mlx5ctl");
 return (-error);
}
