
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_INTERNALIZE (int ,struct label*,char*) ;
 int vnode ;

int
mac_vnode_internalize_label(struct label *label, char *string)
{
 int error;

 MAC_POLICY_INTERNALIZE(vnode, label, string);

 return (error);
}
