
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct ifentry {int ic; } ;


 int M_IPFW_TBL ;
 int free (struct ifentry*,int ) ;
 int ipfw_iface_del_notify (struct ip_fw_chain*,int *) ;
 int ipfw_iface_unref (struct ip_fw_chain*,int *) ;

__attribute__((used)) static int
destroy_ifidx_locked(struct namedobj_instance *ii, struct named_object *no,
    void *arg)
{
 struct ifentry *ife;
 struct ip_fw_chain *ch;

 ch = (struct ip_fw_chain *)arg;
 ife = (struct ifentry *)no;

 ipfw_iface_del_notify(ch, &ife->ic);
 ipfw_iface_unref(ch, &ife->ic);
 free(ife, M_IPFW_TBL);
 return (0);
}
