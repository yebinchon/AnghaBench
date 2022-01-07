
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct table_config {TYPE_1__ no; } ;



void
tc_ref(struct table_config *tc)
{

 tc->no.refcnt++;
}
