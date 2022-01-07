
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct run_softc {int dummy; } ;


 int le32toh (int) ;
 int run_read_region_1 (struct run_softc*,int ,int *,int) ;

__attribute__((used)) static int
run_read(struct run_softc *sc, uint16_t reg, uint32_t *val)
{
 uint32_t tmp;
 int error;

 error = run_read_region_1(sc, reg, (uint8_t *)&tmp, sizeof tmp);
 if (error == 0)
  *val = le32toh(tmp);
 else
  *val = 0xffffffff;
 return (error);
}
