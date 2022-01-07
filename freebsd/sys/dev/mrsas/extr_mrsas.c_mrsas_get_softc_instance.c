
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct mrsas_softc {int dummy; } ;
struct mrsas_iocpacket {size_t host_no; } ;
struct cdev {struct mrsas_softc* si_drv1; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int max_index; struct mrsas_softc** sc_ptr; } ;


 int MRSAS_FAULT ;
 scalar_t__ MRSAS_IOC_GET_PCI_INFO ;
 int mrsas_dprint (struct mrsas_softc*,int ,char*,int) ;
 TYPE_1__ mrsas_mgmt_info ;
 int printf (char*,size_t) ;

__attribute__((used)) static struct mrsas_softc *
mrsas_get_softc_instance(struct cdev *dev, u_long cmd, caddr_t arg)
{
 struct mrsas_softc *sc = ((void*)0);
 struct mrsas_iocpacket *user_ioc = (struct mrsas_iocpacket *)arg;

 if (cmd == MRSAS_IOC_GET_PCI_INFO) {
  sc = dev->si_drv1;
 } else {




  sc = mrsas_mgmt_info.sc_ptr[user_ioc->host_no];
  if (sc == ((void*)0))
   printf("There is no Controller number %d\n",
       user_ioc->host_no);
  else if (user_ioc->host_no >= mrsas_mgmt_info.max_index)
   mrsas_dprint(sc, MRSAS_FAULT,
       "Invalid Controller number %d\n", user_ioc->host_no);
 }

 return sc;
}
