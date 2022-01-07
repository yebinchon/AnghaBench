
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_info {scalar_t__ polling; } ;
struct atiixp_chinfo {int ptr; struct atiixp_info* parent; } ;
typedef int kobj_t ;


 int atiixp_dmapos (struct atiixp_chinfo*) ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_unlock (struct atiixp_info*) ;

__attribute__((used)) static uint32_t
atiixp_chan_getptr(kobj_t obj, void *data)
{
 struct atiixp_chinfo *ch = data;
 struct atiixp_info *sc = ch->parent;
 uint32_t ptr;

 atiixp_lock(sc);
 if (sc->polling != 0)
  ptr = ch->ptr;
 else
  ptr = atiixp_dmapos(ch);
 atiixp_unlock(sc);

 return (ptr);
}
