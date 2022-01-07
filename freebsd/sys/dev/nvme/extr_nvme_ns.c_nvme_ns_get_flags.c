
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_namespace {int flags; } ;



uint32_t
nvme_ns_get_flags(struct nvme_namespace *ns)
{
 return (ns->flags);
}
