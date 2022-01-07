
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr_ib {void* sib_sid_mask; void* sib_sid; } ;
struct sockaddr {int sa_family; } ;
struct rdma_id_private {int node; struct rdma_bind_list* bind_list; } ;
struct rdma_bind_list {int owners; int port; } ;
typedef void* __be16 ;





 unsigned long long be64_to_cpu (void*) ;
 struct sockaddr* cma_src_addr (struct rdma_id_private*) ;
 void* cpu_to_be64 (unsigned long long) ;
 int hlist_add_head (int *,int *) ;
 void* htons (int ) ;
 int ntohs (void*) ;

__attribute__((used)) static void cma_bind_port(struct rdma_bind_list *bind_list,
     struct rdma_id_private *id_priv)
{
 struct sockaddr *addr;
 struct sockaddr_ib *sib;
 u64 sid, mask;
 __be16 port;

 addr = cma_src_addr(id_priv);
 port = htons(bind_list->port);

 switch (addr->sa_family) {
 case 129:
  ((struct sockaddr_in *) addr)->sin_port = port;
  break;
 case 128:
  ((struct sockaddr_in6 *) addr)->sin6_port = port;
  break;
 case 130:
  sib = (struct sockaddr_ib *) addr;
  sid = be64_to_cpu(sib->sib_sid);
  mask = be64_to_cpu(sib->sib_sid_mask);
  sib->sib_sid = cpu_to_be64((sid & mask) | (u64) ntohs(port));
  sib->sib_sid_mask = cpu_to_be64(~0ULL);
  break;
 }
 id_priv->bind_list = bind_list;
 hlist_add_head(&id_priv->node, &bind_list->owners);
}
