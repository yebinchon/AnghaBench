
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_5__ {scalar_t__ tuner_pllAddr; int * tuner; } ;
struct TYPE_6__ {TYPE_1__ card; } ;


 size_t TUNER_MT2032 ;
 int i2cRead (TYPE_2__*,scalar_t__) ;
 int * tuners ;

int get_tuner_status( bktr_ptr_t bktr ) {
 if (bktr->card.tuner == &tuners[TUNER_MT2032])
  return 0;
 return i2cRead( bktr, bktr->card.tuner_pllAddr + 1 );
}
