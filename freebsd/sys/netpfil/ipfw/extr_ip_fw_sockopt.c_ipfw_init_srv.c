
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int srvstate; int srvmap; } ;


 int IPFW_OBJECTS_DEFAULT ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int ipfw_objhash_create (int) ;
 int malloc (int,int ,int) ;

void
ipfw_init_srv(struct ip_fw_chain *ch)
{

 ch->srvmap = ipfw_objhash_create(IPFW_OBJECTS_DEFAULT);
 ch->srvstate = malloc(sizeof(void *) * IPFW_OBJECTS_DEFAULT,
     M_IPFW, M_WAITOK | M_ZERO);
}
