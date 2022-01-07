
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int SLOT_SET (struct label*,int ) ;

__attribute__((used)) static void
mac_veriexec_mount_init_label(struct label *label)
{

 SLOT_SET(label, 0);
}
