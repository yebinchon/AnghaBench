
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_6__ {scalar_t__ dpl3518a; scalar_t__ msp3400c; scalar_t__ dbx; } ;
struct TYPE_7__ {int dpl_addr; TYPE_1__ card; int msp_addr; } ;


 int init_BTSC (TYPE_2__*) ;
 int msp_dpl_reset (TYPE_2__*,int ) ;

void init_audio_devices( bktr_ptr_t bktr ) {


        if ( bktr->card.dbx )
                init_BTSC( bktr );


        if ( bktr->card.msp3400c )
                msp_dpl_reset( bktr, bktr->msp_addr );


        if ( bktr->card.dpl3518a )
                msp_dpl_reset( bktr, bktr->dpl_addr );

}
