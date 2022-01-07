
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int srvmap; int srvstate; } ;


 int M_IPFW ;
 int free (int ,int ) ;
 int ipfw_objhash_destroy (int ) ;

void
ipfw_destroy_srv(struct ip_fw_chain *ch)
{

 free(ch->srvstate, M_IPFW);
 ipfw_objhash_destroy(ch->srvmap);
}
