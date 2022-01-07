
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * initiatorName; int * targetName; int * targetAddress; } ;
typedef TYPE_1__ isc_opt_t ;


 int M_ISC ;
 int debug_called (int) ;
 int free (int *,int ) ;

void
i_freeopt(isc_opt_t *opt)
{
     debug_called(8);

     if(opt->targetAddress != ((void*)0)) {
   free(opt->targetAddress, M_ISC);
   opt->targetAddress = ((void*)0);
     }
     if(opt->targetName != ((void*)0)) {
   free(opt->targetName, M_ISC);
   opt->targetName = ((void*)0);
     }
     if(opt->initiatorName != ((void*)0)) {
   free(opt->initiatorName, M_ISC);
   opt->initiatorName = ((void*)0);
     }
}
