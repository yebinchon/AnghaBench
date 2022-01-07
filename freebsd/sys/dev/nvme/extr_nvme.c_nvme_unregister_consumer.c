
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_consumer {int id; } ;


 int INVALID_CONSUMER_ID ;

void
nvme_unregister_consumer(struct nvme_consumer *consumer)
{

 consumer->id = INVALID_CONSUMER_ID;
}
