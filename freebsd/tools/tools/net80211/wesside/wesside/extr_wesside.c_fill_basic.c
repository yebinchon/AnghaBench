
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_frame {scalar_t__ i_dur; scalar_t__ i_seq; int i_addr3; int i_addr2; int i_addr1; } ;
struct TYPE_4__ {int psent; } ;
struct TYPE_3__ {int bss; } ;


 unsigned short fnseq (int ,int ) ;
 unsigned short htole16 (int) ;
 int memcpy (int ,int ,int) ;
 int mymac ;
 TYPE_2__ txstate ;
 TYPE_1__ victim ;

void fill_basic(struct ieee80211_frame* wh) {
 unsigned short* sp;

 memcpy(wh->i_addr1, victim.bss, 6);
 memcpy(wh->i_addr2, mymac, 6);
 memcpy(wh->i_addr3, victim.bss, 6);



 sp = (unsigned short*) wh->i_seq;
 *sp = fnseq(0, txstate.psent);

 sp = (unsigned short*) wh->i_dur;
 *sp = htole16(32767);
}
