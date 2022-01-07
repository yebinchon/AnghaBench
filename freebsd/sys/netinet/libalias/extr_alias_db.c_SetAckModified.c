
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tcp; } ;
struct alias_link {TYPE_3__ data; } ;
struct TYPE_4__ {int ack_modified; } ;
struct TYPE_5__ {TYPE_1__ state; } ;



void
SetAckModified(struct alias_link *lnk)
{

 lnk->data.tcp->state.ack_modified = 1;
}
