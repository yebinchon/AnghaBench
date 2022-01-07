
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short IEEE80211_SEQ_SEQ_SHIFT ;
 int assert (int) ;

short seqfn(unsigned short seq, unsigned short fn)
{
 unsigned short r = 0;

 assert(fn < 16);

 r = fn;
 r |= ( (seq % 4096) << IEEE80211_SEQ_SEQ_SHIFT);
 return r;
}
