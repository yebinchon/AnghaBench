
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mmcsd_part {int dummy; } ;
struct mmc_ioc_multi_cmd {int num_of_cmds; scalar_t__ cmds; } ;
struct mmc_ioc_cmd {int dummy; } ;


 int EBADF ;
 int EINVAL ;
 int ENOIOCTL ;
 int FREAD ;

 int MMC_IOC_MAX_CMDS ;

 int M_TEMP ;
 int M_WAITOK ;
 int PRIV_DRIVER ;
 int copyin (void const*,struct mmc_ioc_cmd*,int) ;
 int free (struct mmc_ioc_cmd*,int ) ;
 struct mmc_ioc_cmd* malloc (int,int ,int ) ;
 int mmcsd_ioctl_cmd (struct mmcsd_part*,struct mmc_ioc_cmd*,int) ;
 int priv_check (struct thread*,int ) ;

__attribute__((used)) static int
mmcsd_ioctl(struct mmcsd_part *part, u_long cmd, void *data, int fflag,
    struct thread *td)
{
 struct mmc_ioc_cmd *mic;
 struct mmc_ioc_multi_cmd *mimc;
 int i, err;
 u_long cnt, size;

 if ((fflag & FREAD) == 0)
  return (EBADF);

 err = priv_check(td, PRIV_DRIVER);
 if (err != 0)
  return (err);

 err = 0;
 switch (cmd) {
 case 129:
  mic = data;
  err = mmcsd_ioctl_cmd(part, mic, fflag);
  break;
 case 128:
  mimc = data;
  if (mimc->num_of_cmds == 0)
   break;
  if (mimc->num_of_cmds > MMC_IOC_MAX_CMDS)
   return (EINVAL);
  cnt = mimc->num_of_cmds;
  size = sizeof(*mic) * cnt;
  mic = malloc(size, M_TEMP, M_WAITOK);
  err = copyin((const void *)mimc->cmds, mic, size);
  if (err == 0) {
   for (i = 0; i < cnt; i++) {
    err = mmcsd_ioctl_cmd(part, &mic[i], fflag);
    if (err != 0)
     break;
   }
  }
  free(mic, M_TEMP);
  break;
 default:
  return (ENOIOCTL);
 }
 return (err);
}
