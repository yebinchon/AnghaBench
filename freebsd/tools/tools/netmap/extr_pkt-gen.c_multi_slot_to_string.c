
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_slot {int len; int flags; } ;
struct netmap_ring {struct netmap_slot* slot; } ;


 unsigned int nm_ring_next (struct netmap_ring*,unsigned int) ;
 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static char *
multi_slot_to_string(struct netmap_ring *ring, unsigned int head,
       unsigned int nfrags, char *strbuf, size_t strbuflen)
{
 unsigned int f;
 char *ret = strbuf;

 for (f = 0; f < nfrags; f++) {
  struct netmap_slot *slot = &ring->slot[head];
  int m = snprintf(strbuf, strbuflen, "|%u,%x|", slot->len,
     slot->flags);
  if (m >= (int)strbuflen) {
   break;
  }
  strbuf += m;
  strbuflen -= m;

  head = nm_ring_next(ring, head);
 }

 return ret;
}
