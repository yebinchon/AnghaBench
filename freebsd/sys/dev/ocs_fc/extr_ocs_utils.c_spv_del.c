
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sparse_vector_t ;
struct TYPE_4__ {int os; int array; } ;


 int SPV_DIM ;
 int SPV_ROWLEN ;
 int _spv_del (int ,int ,int ,int ) ;
 int ocs_free (int ,TYPE_1__*,int) ;

void
spv_del(sparse_vector_t spv)
{
 if (spv) {
  _spv_del(spv->os, spv->array, SPV_ROWLEN, SPV_DIM);
  ocs_free(spv->os, spv, sizeof(*spv));
 }
}
