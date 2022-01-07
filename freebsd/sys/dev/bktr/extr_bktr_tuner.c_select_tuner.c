
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_4__ {int * tuner; } ;
struct TYPE_5__ {TYPE_1__ card; } ;


 int Bt848_MAX_TUNER ;
 int * tuners ;

void select_tuner( bktr_ptr_t bktr, int tuner_type ) {
 if (tuner_type < Bt848_MAX_TUNER) {
  bktr->card.tuner = &tuners[ tuner_type ];
 } else {
  bktr->card.tuner = ((void*)0);
 }
}
