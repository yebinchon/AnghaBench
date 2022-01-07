
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {scalar_t__ cbuf; } ;


 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int* coefficientSizes ;
 int * coefficients ;
 int nm_wr (struct sc_info*,int,scalar_t__,int) ;
 int nm_wrbuf (struct sc_info*,scalar_t__,int ,int) ;

__attribute__((used)) static int
nm_loadcoeff(struct sc_info *sc, int dir, int num)
{
 int ofs, sz, i;
 u_int32_t addr;

 addr = (dir == PCMDIR_PLAY)? 0x01c : 0x21c;
 if (dir == PCMDIR_REC)
  num += 8;
 sz = coefficientSizes[num];
 ofs = 0;
 while (num-- > 0)
  ofs+= coefficientSizes[num];
 for (i = 0; i < sz; i++)
  nm_wrbuf(sc, sc->cbuf + i, coefficients[ofs + i], 1);
 nm_wr(sc, addr, sc->cbuf, 4);
 if (dir == PCMDIR_PLAY)
  sz--;
 nm_wr(sc, addr + 4, sc->cbuf + sz, 4);
 return 0;
}
