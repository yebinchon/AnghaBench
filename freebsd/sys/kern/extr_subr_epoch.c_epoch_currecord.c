
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* epoch_t ;
typedef int epoch_record_t ;
struct TYPE_3__ {int e_pcpu_record; } ;


 int curcpu ;
 int zpcpu_get_cpu (int ,int ) ;

__attribute__((used)) static epoch_record_t
epoch_currecord(epoch_t epoch)
{

 return (zpcpu_get_cpu(epoch->e_pcpu_record, curcpu));
}
