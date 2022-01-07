
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int uma_zfree (int ,struct label*) ;
 int zone_label ;

void
mac_labelzone_free(struct label *label)
{

 uma_zfree(zone_label, label);
}
