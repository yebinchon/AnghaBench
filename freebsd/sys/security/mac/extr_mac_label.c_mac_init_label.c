
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int l_flags; } ;


 int MAC_FLAG_INITIALIZED ;
 int bzero (struct label*,int) ;

void
mac_init_label(struct label *label)
{

 bzero(label, sizeof(*label));
 label->l_flags = MAC_FLAG_INITIALIZED;
}
