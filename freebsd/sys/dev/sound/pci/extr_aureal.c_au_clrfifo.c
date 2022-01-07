
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_info {int dummy; } ;


 scalar_t__ AU_REG_FIFOBASE ;
 int au_wr (struct au_info*,int ,scalar_t__,int ,int) ;

__attribute__((used)) static void
au_clrfifo(struct au_info *au, u_int32_t c)
{
 u_int32_t i;

 for (i=0; i<32; i++) au_wr(au, 0, AU_REG_FIFOBASE+(c<<7)+(i<<2), 0, 4);
}
