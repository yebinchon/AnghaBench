
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct resolve_cb_context {int status; int comp; int addr; } ;
struct rdma_dev_addr {int dummy; } ;


 int complete (int *) ;
 int memcpy (int ,struct rdma_dev_addr*,int) ;

__attribute__((used)) static void resolve_cb(int status, struct sockaddr *src_addr,
      struct rdma_dev_addr *addr, void *context)
{
 if (!status)
  memcpy(((struct resolve_cb_context *)context)->addr,
         addr, sizeof(struct rdma_dev_addr));
 ((struct resolve_cb_context *)context)->status = status;
 complete(&((struct resolve_cb_context *)context)->comp);
}
