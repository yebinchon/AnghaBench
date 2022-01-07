
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char const*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,int ,int ,char const*,int ,int *,char const*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int sysctl_ctx_init (struct sysctl_ctx_list*) ;

void
mlx5e_create_stats(struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *parent, const char *buffer,
    const char **desc, unsigned num, u64 * arg)
{
 struct sysctl_oid *node;
 unsigned x;

 sysctl_ctx_init(ctx);

 node = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO,
     buffer, CTLFLAG_RD, ((void*)0), "Statistics");
 if (node == ((void*)0))
  return;
 for (x = 0; x != num; x++) {
  SYSCTL_ADD_UQUAD(ctx, SYSCTL_CHILDREN(node), OID_AUTO,
      desc[2 * x], CTLFLAG_RD, arg + x, desc[2 * x + 1]);
 }
}
