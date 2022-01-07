
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {struct emu_voice* voice; } ;
struct emu_voice {int busy; } ;



__attribute__((used)) static struct emu_voice *
emu_valloc(struct sc_info *sc)
{
 struct emu_voice *v;
 int i;

 v = ((void*)0);
 for (i = 0; i < 64 && sc->voice[i].busy; i++);
 if (i < 64) {
  v = &sc->voice[i];
  v->busy = 1;
 }
 return v;
}
