
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int SATI_SEQUENCE_STATE_INITIAL ;

void sati_sequence_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   sequence->state = SATI_SEQUENCE_STATE_INITIAL;
}
