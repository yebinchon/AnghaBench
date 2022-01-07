
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {scalar_t__ i_seq; } ;


 unsigned short IEEE80211_SEQ_SEQ_MASK ;
 unsigned short IEEE80211_SEQ_SEQ_SHIFT ;

unsigned short seqno(struct ieee80211_frame *wh)
{
 unsigned short *s = (unsigned short*) wh->i_seq;

 return (*s & IEEE80211_SEQ_SEQ_MASK) >> IEEE80211_SEQ_SEQ_SHIFT;
}
