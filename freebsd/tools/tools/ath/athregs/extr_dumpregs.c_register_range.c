
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct dumpreg {int addr; int type; } ;


 scalar_t__ calloc (int,int) ;
 int errx (int,char*,int,int) ;
 int register_regs (struct dumpreg*,int,int,int,int,int) ;

void
register_range(u_int brange, u_int erange, int type,
 int def_srev_min, int def_srev_max, int def_phy_min, int def_phy_max)
{
 struct dumpreg *bbregs, *r;
 int i, nregs;

 nregs = (erange - brange) / sizeof(uint32_t);
 bbregs = (struct dumpreg *) calloc(nregs, sizeof(struct dumpreg));
 if (bbregs == ((void*)0))
  errx(-1, "no space for %d register slots (type %d)\n",
      nregs, type);
 r = bbregs;
 for (i = 0; i < nregs; i++) {
  r->addr = brange + (i<<2);
  r->type = type;
  r++;
 }
 register_regs(bbregs, nregs,
     def_srev_min, def_srev_max, def_phy_min, def_phy_max);
}
