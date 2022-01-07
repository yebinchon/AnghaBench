
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct label {int dummy; } ;
struct TYPE_3__ {int mtx; } ;


 int M_LOMAC ;
 TYPE_1__* PSLOT (struct label*) ;
 int PSLOT_SET (struct label*,int *) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
lomac_proc_destroy_label(struct label *label)
{

 mtx_destroy(&PSLOT(label)->mtx);
 free(PSLOT(label), M_LOMAC);
 PSLOT_SET(label, ((void*)0));
}
