
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsecrequest {int dummy; } ;


 int M_IPSEC_SR ;
 int free (struct ipsecrequest*,int ) ;

void
ipsec_delisr(struct ipsecrequest *p)
{

 free(p, M_IPSEC_SR);
}
