
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int dummy; } ;


 scalar_t__ R92C_MACID (int) ;
 int le16dec (int const*) ;
 int le32dec (int const*) ;
 int rtwn_write_2 (struct rtwn_softc*,scalar_t__,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,scalar_t__,int ) ;

__attribute__((used)) static int
rtwn_set_macaddr(struct rtwn_softc *sc, const uint8_t *addr, int id)
{
 int error;

 error = rtwn_write_4(sc, R92C_MACID(id), le32dec(&addr[0]));
 if (error != 0)
  return (error);
 error = rtwn_write_2(sc, R92C_MACID(id) + 4, le16dec(&addr[4]));

 return (error);
}
