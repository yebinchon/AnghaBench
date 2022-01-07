
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct gate_descriptor {uintptr_t gd_looffset; int gd_selector; int gd_type; int gd_dpl; int gd_p; int gd_hioffset; scalar_t__ gd_xx; scalar_t__ gd_stkcpy; } ;


 struct gate_descriptor* idt ;

void
setidt_nodisp(int idx, uintptr_t off, int typ, int dpl, int selec)
{
 struct gate_descriptor *ip;

 ip = idt + idx;
 ip->gd_looffset = off;
 ip->gd_selector = selec;
 ip->gd_stkcpy = 0;
 ip->gd_xx = 0;
 ip->gd_type = typ;
 ip->gd_dpl = dpl;
 ip->gd_p = 1;
 ip->gd_hioffset = ((u_int)off) >> 16 ;
}
