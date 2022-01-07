
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {int flag; } ;
typedef int ioctl_thread_t ;
typedef int ioctl_dev_t ;


 int EBUSY ;
 int ENXIO ;
 int HPT_IOCTL_FLAG_OPEN ;
 struct hpt_iop_hba* hba_from_dev (int ) ;

__attribute__((used)) static int hptiop_open(ioctl_dev_t dev, int flags,
     int devtype, ioctl_thread_t proc)
{
 struct hpt_iop_hba *hba = hba_from_dev(dev);

 if (hba==((void*)0))
  return ENXIO;
 if (hba->flag & HPT_IOCTL_FLAG_OPEN)
  return EBUSY;
 hba->flag |= HPT_IOCTL_FLAG_OPEN;
 return 0;
}
