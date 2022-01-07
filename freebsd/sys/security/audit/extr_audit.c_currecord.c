
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaudit_record {int dummy; } ;
struct TYPE_2__ {struct kaudit_record* td_ar; } ;


 TYPE_1__* curthread ;

struct kaudit_record *
currecord(void)
{

 return (curthread->td_ar);
}
