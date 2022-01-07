
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int8_t ;
struct thread {int dummy; } ;
struct ppi_data {int ppi_device; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;
 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_rctr (int ) ;
 int ppb_rdtr (int ) ;
 int ppb_recr (int ) ;
 int ppb_repp_A (int ) ;
 int ppb_repp_D (int ) ;
 int ppb_rfifo (int ) ;
 int ppb_rstr (int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int ) ;
 int ppb_wdtr (int ,int ) ;
 int ppb_wecr (int ,int ) ;
 int ppb_wepp_A (int ,int ) ;
 int ppb_wepp_D (int ,int ) ;
 int ppb_wfifo (int ,int ) ;
 int ppb_wstr (int ,int ) ;

__attribute__((used)) static int
ppiioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 struct ppi_data *ppi = dev->si_drv1;
 device_t ppidev = ppi->ppi_device;
 device_t ppbus = device_get_parent(ppidev);
 int error = 0;
 u_int8_t *val = (u_int8_t *)data;

 ppb_lock(ppbus);
 switch (cmd) {

 case 140:
  *val = ppb_rdtr(ppbus);
  break;
 case 135:
  *val = ppb_rstr(ppbus);
  break;
 case 141:
  *val = ppb_rctr(ppbus);
  break;
 case 137:
  *val = ppb_repp_D(ppbus);
  break;
 case 139:
  *val = ppb_recr(ppbus);
  break;
 case 136:
  *val = ppb_rfifo(ppbus);
  break;
 case 133:
  ppb_wdtr(ppbus, *val);
  break;
 case 128:
  ppb_wstr(ppbus, *val);
  break;
 case 134:
  ppb_wctr(ppbus, *val);
  break;
 case 130:
  ppb_wepp_D(ppbus, *val);
  break;
 case 132:
  ppb_wecr(ppbus, *val);
  break;
 case 129:
  ppb_wfifo(ppbus, *val);
  break;
 case 138:
  *val = ppb_repp_A(ppbus);
  break;
 case 131:
  ppb_wepp_A(ppbus, *val);
  break;
 default:
  error = ENOTTY;
  break;
 }
 ppb_unlock(ppbus);

 return (error);
}
