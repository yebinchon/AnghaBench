
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int dummy; } ;


 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int ugidfw_mtx ;

__attribute__((used)) static void
ugidfw_init(struct mac_policy_conf *mpc)
{

 mtx_init(&ugidfw_mtx, "mac_bsdextended lock", ((void*)0), MTX_DEF);
}
