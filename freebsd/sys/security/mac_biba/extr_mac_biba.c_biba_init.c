
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int dummy; } ;
struct mac_biba {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int zone_biba ;

__attribute__((used)) static void
biba_init(struct mac_policy_conf *conf)
{

 zone_biba = uma_zcreate("mac_biba", sizeof(struct mac_biba), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
}
