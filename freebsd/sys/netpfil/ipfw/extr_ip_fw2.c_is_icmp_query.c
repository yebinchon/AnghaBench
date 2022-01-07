
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icmphdr {int icmp_type; } ;


 int ICMP_MAXTYPE ;
 int TT ;

__attribute__((used)) static int
is_icmp_query(struct icmphdr *icmp)
{
 int type = icmp->icmp_type;

 return (type <= ICMP_MAXTYPE && (TT & (1<<type)) );
}
