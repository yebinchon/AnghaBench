
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct amdsmb_softc {int dummy; } ;


 int AMDSMB_ECINB (struct amdsmb_softc*,int ) ;
 int AMDSMB_ECOUTB (struct amdsmb_softc*,int ,int ) ;
 int AMDSMB_LOCK_ASSERT (struct amdsmb_softc*) ;
 int EC_CMD ;
 int EC_CMD_RD ;
 int EC_DATA ;
 scalar_t__ amdsmb_ec_wait_read (struct amdsmb_softc*) ;
 scalar_t__ amdsmb_ec_wait_write (struct amdsmb_softc*) ;

__attribute__((used)) static int
amdsmb_ec_read(struct amdsmb_softc *sc, u_char addr, u_char *data)
{

 AMDSMB_LOCK_ASSERT(sc);
 if (amdsmb_ec_wait_write(sc))
  return (1);
 AMDSMB_ECOUTB(sc, EC_CMD, EC_CMD_RD);

 if (amdsmb_ec_wait_write(sc))
  return (1);
 AMDSMB_ECOUTB(sc, EC_DATA, addr);

 if (amdsmb_ec_wait_read(sc))
  return (1);
 *data = AMDSMB_ECINB(sc, EC_DATA);

 return (0);
}
