
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hn_softc {int hn_ifp; } ;


 int EINVAL ;
 size_t ETHER_ADDR_LEN ;
 int OID_802_3_PERMANENT_ADDRESS ;
 int hn_rndis_query (struct hn_softc*,int ,int *,int ,int *,size_t*) ;
 int if_printf (int ,char*,size_t) ;

int
hn_rndis_get_eaddr(struct hn_softc *sc, uint8_t *eaddr)
{
 size_t eaddr_len;
 int error;

 eaddr_len = ETHER_ADDR_LEN;
 error = hn_rndis_query(sc, OID_802_3_PERMANENT_ADDRESS, ((void*)0), 0,
     eaddr, &eaddr_len);
 if (error)
  return (error);
 if (eaddr_len != ETHER_ADDR_LEN) {
  if_printf(sc->hn_ifp, "invalid eaddr len %zu\n", eaddr_len);
  return (EINVAL);
 }
 return (0);
}
