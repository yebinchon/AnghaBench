
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_sample {int * sb; scalar_t__ npmcs; } ;


 int free (int *) ;

__attribute__((used)) static void
pmcpl_ct_samples_free(struct pmcpl_ct_sample *samples)
{

 samples->npmcs = 0;
 free(samples->sb);
 samples->sb = ((void*)0);
}
