
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
struct emu_voice {int start; int vnum; scalar_t__ stereo; scalar_t__ b16; } ;


 int EMU_CHAN_CCCA_CURRADDR ;
 int emu_rdptr (struct sc_info*,int ,int ) ;

__attribute__((used)) static int
emu_vpos(struct sc_info *sc, struct emu_voice *v)
{
 int s, ptr;

 s = (v->b16 ? 1 : 0) + (v->stereo ? 1 : 0);
 ptr = (emu_rdptr(sc, v->vnum, EMU_CHAN_CCCA_CURRADDR) - (v->start >> s)) << s;
 return ptr & ~0x0000001f;
}
