
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addr_client {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void put_client(struct rdma_addr_client *client)
{
 if (atomic_dec_and_test(&client->refcount))
  complete(&client->comp);
}
