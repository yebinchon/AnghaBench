
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct cs4231_softc {int dummy; } ;


 int CS4231_IADDR ;
 int CS4231_IDATA ;
 int CS_READ (struct cs4231_softc*,int ) ;
 int CS_WRITE (struct cs4231_softc*,int ,int ) ;

__attribute__((used)) static u_int8_t
cs4231_read(struct cs4231_softc *sc, u_int8_t r)
{
 CS_WRITE(sc, CS4231_IADDR, r);
 return (CS_READ(sc, CS4231_IDATA));
}
