
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_var {int cc_data; } ;


 int M_VEGAS ;
 int free (int ,int ) ;

__attribute__((used)) static void
vegas_cb_destroy(struct cc_var *ccv)
{
 free(ccv->cc_data, M_VEGAS);
}
