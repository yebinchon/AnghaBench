
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cuda_softc {int dummy; } ;


 int cuda_read_reg (struct cuda_softc*,int ) ;
 int cuda_write_reg (struct cuda_softc*,int ,int ) ;
 int vACR ;
 int vSR_OUT ;

__attribute__((used)) static void
cuda_in(struct cuda_softc *sc)
{
 uint8_t reg;

 reg = cuda_read_reg(sc, vACR);
 reg &= ~vSR_OUT;
 cuda_write_reg(sc, vACR, reg);
}
