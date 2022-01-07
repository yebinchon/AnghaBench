
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct secreplay {int wsize; scalar_t__ count; int lastseq; int* bitmap; int bitmap_size; } ;
struct secasvar {struct secreplay* replay; } ;


 int IPSEC_ASSERT (int ,char*) ;
 int IPSEC_BITMAP_INDEX_MASK (int ) ;
 int IPSEC_BITMAP_LOC_MASK ;
 int IPSEC_REDUNDANT_BIT_SHIFTS ;

int
ipsec_chkreplay(uint32_t seq, struct secasvar *sav)
{
 const struct secreplay *replay;
 uint32_t wsizeb;
 int index, bit_location;

 IPSEC_ASSERT(sav != ((void*)0), ("Null SA"));
 IPSEC_ASSERT(sav->replay != ((void*)0), ("Null replay state"));

 replay = sav->replay;


 if (replay->wsize == 0)
  return (1);


 wsizeb = replay->wsize << 3;


 if (seq == 0)
  return (0);


 if (replay->count == 0)
  return (1);


 if (seq > replay->lastseq)
  return (1);


 if (replay->lastseq - seq >= wsizeb)
  return (0);





 bit_location = seq & IPSEC_BITMAP_LOC_MASK;
 index = (seq >> IPSEC_REDUNDANT_BIT_SHIFTS)
  & IPSEC_BITMAP_INDEX_MASK(replay->bitmap_size);


 if ((replay->bitmap)[index] & (1 << bit_location))
  return (0);
 return (1);
}
