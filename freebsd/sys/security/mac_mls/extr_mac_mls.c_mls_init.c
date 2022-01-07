
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int dummy; } ;
struct mac_mls {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int zone_mls ;

__attribute__((used)) static void
mls_init(struct mac_policy_conf *conf)
{

 zone_mls = uma_zcreate("mac_mls", sizeof(struct mac_mls), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
}
