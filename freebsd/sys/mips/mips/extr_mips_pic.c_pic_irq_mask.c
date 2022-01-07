
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mips_pic_softc {int dummy; } ;


 int mips_rd_status () ;
 int mips_wr_status (int) ;

__attribute__((used)) static inline void
pic_irq_mask(struct mips_pic_softc *sc, u_int irq)
{

 mips_wr_status(mips_rd_status() & ~((1 << irq) << 8));
}
