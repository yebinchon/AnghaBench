
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct fb_info {scalar_t__ fb_size; scalar_t__ fb_vbase; } ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
vt_fb_mem_wr1(struct fb_info *sc, uint32_t o, uint8_t v)
{

 KASSERT((o < sc->fb_size), ("Offset %#08x out of fb size", o));
 *(uint8_t *)(sc->fb_vbase + o) = v;
}
