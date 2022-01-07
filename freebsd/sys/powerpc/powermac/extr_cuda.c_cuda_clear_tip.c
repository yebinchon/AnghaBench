
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cuda_softc {int dummy; } ;


 int cuda_read_reg (struct cuda_softc*,int ) ;
 int cuda_write_reg (struct cuda_softc*,int ,int ) ;
 int vBufB ;
 int vPB5 ;

__attribute__((used)) static void
cuda_clear_tip(struct cuda_softc *sc)
{
 uint8_t reg;

 reg = cuda_read_reg(sc, vBufB);
 reg |= vPB5;
 cuda_write_reg(sc, vBufB, reg);
}
