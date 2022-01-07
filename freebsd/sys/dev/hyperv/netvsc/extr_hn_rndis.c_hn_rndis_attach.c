
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int dummy; } ;


 int hn_rndis_conf_offload (struct hn_softc*,int) ;
 int hn_rndis_init (struct hn_softc*) ;

int
hn_rndis_attach(struct hn_softc *sc, int mtu, int *init_done)
{
 int error;

 *init_done = 0;




 error = hn_rndis_init(sc);
 if (error)
  return (error);
 *init_done = 1;




 hn_rndis_conf_offload(sc, mtu);
 return (0);
}
