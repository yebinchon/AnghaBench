
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int mac_labelzone_ctor ;
 int mac_labelzone_dtor ;
 int uma_zcreate (char*,int,int ,int ,int *,int *,int ,int ) ;
 int zone_label ;

void
mac_labelzone_init(void)
{

 zone_label = uma_zcreate("MAC labels", sizeof(struct label),
     mac_labelzone_ctor, mac_labelzone_dtor, ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
}
