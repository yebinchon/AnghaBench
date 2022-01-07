
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_6__ {int channel; } ;
struct TYPE_7__ {TYPE_1__ tuner; } ;


 int TV_FREQUENCY ;
 int frequency_lookup (TYPE_2__*,int) ;
 scalar_t__ tv_freq (TYPE_2__*,int,int ) ;

int
tv_channel( bktr_ptr_t bktr, int channel )
{
 int frequency;


 if ( (frequency = frequency_lookup( bktr, channel )) < 0 )
  return( -1 );


 if ( tv_freq( bktr, frequency, TV_FREQUENCY ) < 0 )
  return( -1 );


 return( (bktr->tuner.channel = channel) );
}
