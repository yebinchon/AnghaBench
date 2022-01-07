
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bktr_chnlset {size_t index; int max_channel; int name; } ;
struct TYPE_2__ {int * ptr; int name; } ;


 int BT848_MAX_CHNLSET_NAME_LEN ;
 size_t CHNLSET_MAX ;
 size_t CHNLSET_MIN ;
 int EINVAL ;
 TYPE_1__* freqTable ;
 int memcpy (int *,int *,int ) ;

int
tuner_getchnlset(struct bktr_chnlset *chnlset)
{
       if (( chnlset->index < CHNLSET_MIN ) ||
               ( chnlset->index > CHNLSET_MAX ))
                       return( EINVAL );

       memcpy(&chnlset->name, &freqTable[chnlset->index].name,
               BT848_MAX_CHNLSET_NAME_LEN);

       chnlset->max_channel=freqTable[chnlset->index].ptr[0];
       return( 0 );
}
