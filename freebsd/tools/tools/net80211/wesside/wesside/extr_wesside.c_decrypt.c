
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* prga; int len; } ;
struct TYPE_7__ {scalar_t__* i_addr3; int i_seq; } ;
struct TYPE_9__ {TYPE_1__ wh; scalar_t__ data; scalar_t__ ptr; scalar_t__ waiting_relay; } ;
struct TYPE_11__ {TYPE_4__ prgainfo; TYPE_3__ fragstate; } ;
struct TYPE_8__ {int psent; } ;


 int MCAST_PREF ;
 TYPE_6__ decryptstate ;
 int exit (int) ;
 unsigned short fnseq (int ,int ) ;
 int memcpy (scalar_t__*,int ,int) ;
 int prepare_fragstate (TYPE_3__*,int ) ;
 int printf (char*) ;
 int send_fragment (int,TYPE_3__*,TYPE_4__*) ;
 TYPE_2__ txstate ;

void decrypt(int tx) {


 if (!decryptstate.fragstate.data) {
  prepare_fragstate(&decryptstate.fragstate, 0);

  memcpy(decryptstate.fragstate.wh.i_addr3,
         MCAST_PREF, 5);

  decryptstate.fragstate.wh.i_addr3[5] =
  decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1];

  decryptstate.prgainfo.len++;
 }


 if (decryptstate.fragstate.waiting_relay) {
  unsigned short* seq;
  decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1]++;







  decryptstate.fragstate.wh.i_addr3[5] =
  decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1];

  decryptstate.fragstate.waiting_relay = 0;
  decryptstate.fragstate.ptr = decryptstate.fragstate.data;

  seq = (unsigned short*) &decryptstate.fragstate.wh.i_seq;
  *seq = fnseq(0, txstate.psent);
 }

 send_fragment(tx, &decryptstate.fragstate,
        &decryptstate.prgainfo);
}
