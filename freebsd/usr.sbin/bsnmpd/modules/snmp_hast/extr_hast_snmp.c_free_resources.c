
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hast_snmp_resource {int dummy; } ;


 struct hast_snmp_resource* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct hast_snmp_resource*,int ) ;
 int free (struct hast_snmp_resource*) ;
 int link ;
 int resources ;

__attribute__((used)) static void
free_resources(void)
{
 struct hast_snmp_resource *res;

 while ((res = TAILQ_FIRST(&resources)) != ((void*)0)) {
  TAILQ_REMOVE(&resources, res, link);
  free(res);
 }
}
