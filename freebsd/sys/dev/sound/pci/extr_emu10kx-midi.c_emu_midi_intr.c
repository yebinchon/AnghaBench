
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_midi_card_intr (void*,int ) ;

__attribute__((used)) static void
emu_midi_intr(void *p)
{
 (void)emu_midi_card_intr(p, 0);
}
