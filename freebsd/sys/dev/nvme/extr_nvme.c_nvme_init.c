
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct nvme_request {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int INVALID_CONSUMER_ID ;
 size_t NVME_MAX_CONSUMERS ;
 TYPE_1__* nvme_consumer ;
 int nvme_request_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
nvme_init(void)
{
 uint32_t i;

 nvme_request_zone = uma_zcreate("nvme_request",
     sizeof(struct nvme_request), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);

 for (i = 0; i < NVME_MAX_CONSUMERS; i++)
  nvme_consumer[i].id = INVALID_CONSUMER_ID;
}
