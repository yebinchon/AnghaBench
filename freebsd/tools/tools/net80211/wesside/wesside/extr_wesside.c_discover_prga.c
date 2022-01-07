
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int last; scalar_t__ waiting_relay; int data; } ;


 int err (int,char*) ;
 TYPE_1__ fragstate ;
 int gettimeofday (int *,int *) ;
 int prepare_fragstate (TYPE_1__*,int) ;
 TYPE_2__ prgainfo ;
 int send_fragment (int,TYPE_1__*,TYPE_2__*) ;

void discover_prga(int tx) {


 if (!fragstate.data) {
  int pad = 0;

  if (prgainfo.len >= 20)
   pad = prgainfo.len*3;

  prepare_fragstate(&fragstate, pad);
 }

 if (!fragstate.waiting_relay) {
  send_fragment(tx, &fragstate, &prgainfo);
  if (fragstate.waiting_relay) {
   if (gettimeofday(&fragstate.last, ((void*)0)) == -1)
    err(1, "gettimeofday()");
  }
 }
}
