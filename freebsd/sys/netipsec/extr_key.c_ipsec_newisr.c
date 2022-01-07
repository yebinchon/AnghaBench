
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsecrequest {int dummy; } ;


 int M_IPSEC_SR ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct ipsecrequest* malloc (int,int ,int) ;

struct ipsecrequest *
ipsec_newisr(void)
{

 return (malloc(sizeof(struct ipsecrequest), M_IPSEC_SR,
     M_NOWAIT | M_ZERO));
}
