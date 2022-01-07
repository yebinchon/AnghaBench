
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rum_softc {int dummy; } ;


 int le32toh (int ) ;
 int rum_read_multi (struct rum_softc*,int ,int *,int) ;

__attribute__((used)) static uint32_t
rum_read(struct rum_softc *sc, uint16_t reg)
{
 uint32_t val;

 rum_read_multi(sc, reg, &val, sizeof val);

 return le32toh(val);
}
