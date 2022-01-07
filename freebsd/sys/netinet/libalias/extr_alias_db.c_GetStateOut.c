
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tcp; } ;
struct alias_link {TYPE_3__ data; } ;
struct TYPE_4__ {int out; } ;
struct TYPE_5__ {TYPE_1__ state; } ;



int
GetStateOut(struct alias_link *lnk)
{

 return (lnk->data.tcp->state.out);
}
