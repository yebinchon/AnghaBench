
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int FINGERPRINT_INVALID ;
 int SLOT_SET (struct label*,int ) ;

__attribute__((used)) static void
mac_veriexec_vnode_init_label(struct label *label)
{

 SLOT_SET(label, FINGERPRINT_INVALID);
}
