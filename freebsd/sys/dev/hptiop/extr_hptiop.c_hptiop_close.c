
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int flag; } ;
typedef int ioctl_thread_t ;
typedef int ioctl_dev_t ;


 scalar_t__ HPT_IOCTL_FLAG_OPEN ;
 struct hpt_iop_hba* hba_from_dev (int ) ;

__attribute__((used)) static int hptiop_close(ioctl_dev_t dev, int flags,
     int devtype, ioctl_thread_t proc)
{
 struct hpt_iop_hba *hba = hba_from_dev(dev);
 hba->flag &= ~(u_int32_t)HPT_IOCTL_FLAG_OPEN;
 return 0;
}
