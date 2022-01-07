
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int seq; int mac; } ;
struct ieee80211_frame {int* i_dur; scalar_t__ i_seq; int i_addr2; } ;


 int memcpy (int ,int ,int) ;
 short seqfn (int ,int ) ;

void fill_basic(struct ieee80211_frame *wh, struct params *p)
{
        short *seq;

        wh->i_dur[0] = 0x69;
        wh->i_dur[1] = 0x00;

        memcpy(wh->i_addr2, p->mac, 6);

        seq = (short*)wh->i_seq;
        *seq = seqfn(p->seq, 0);
}
