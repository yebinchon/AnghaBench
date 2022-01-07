
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_namespace {TYPE_2__* ctrlr; } ;
struct TYPE_3__ {scalar_t__ sn; } ;
struct TYPE_4__ {TYPE_1__ cdata; } ;



const char *
nvme_ns_get_serial_number(struct nvme_namespace *ns)
{
 return ((const char *)ns->ctrlr->cdata.sn);
}
