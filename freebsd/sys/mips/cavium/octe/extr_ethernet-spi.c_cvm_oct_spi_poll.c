
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int port; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int CVMX_SPI_MODE_DUPLEX ;
 int cvm_oct_spi_enable_error_reporting (int) ;
 int cvmx_spi4000_check_speed (int,int) ;
 scalar_t__ cvmx_spi_restart_interface (int,int ,int) ;
 scalar_t__* need_retrain ;

__attribute__((used)) static void cvm_oct_spi_poll(struct ifnet *ifp)
{
 static int spi4000_port;
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 int interface;

 for (interface = 0; interface < 2; interface++) {

  if ((priv->port == interface*16) && need_retrain[interface]) {

   if (cvmx_spi_restart_interface(interface, CVMX_SPI_MODE_DUPLEX, 10) == 0) {
    need_retrain[interface] = 0;
    cvm_oct_spi_enable_error_reporting(interface);
   }
  }






  if (priv->port == spi4000_port) {


   cvmx_spi4000_check_speed(interface, priv->port);


   spi4000_port--;
   if (spi4000_port < 0)
    spi4000_port = 10;
  }
 }
}
