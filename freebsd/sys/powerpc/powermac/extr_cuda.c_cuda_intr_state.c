
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuda_softc {int dummy; } ;


 int cuda_read_reg (struct cuda_softc*,int ) ;
 int vBufB ;
 int vPB3 ;

__attribute__((used)) static int
cuda_intr_state(struct cuda_softc *sc)
{
 return ((cuda_read_reg(sc, vBufB) & vPB3) == 0);
}
