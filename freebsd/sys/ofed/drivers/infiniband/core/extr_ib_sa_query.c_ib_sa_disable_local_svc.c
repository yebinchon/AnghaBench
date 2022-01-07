
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_query {int flags; } ;


 int IB_SA_ENABLE_LOCAL_SERVICE ;

__attribute__((used)) static inline void ib_sa_disable_local_svc(struct ib_sa_query *query)
{
 query->flags &= ~IB_SA_ENABLE_LOCAL_SERVICE;
}
