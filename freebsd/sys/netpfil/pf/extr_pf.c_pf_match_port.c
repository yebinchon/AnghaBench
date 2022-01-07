
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 int NTOHS (int ) ;
 int pf_match (int ,int ,int ,int ) ;

int
pf_match_port(u_int8_t op, u_int16_t a1, u_int16_t a2, u_int16_t p)
{
 NTOHS(a1);
 NTOHS(a2);
 NTOHS(p);
 return (pf_match(op, a1, a2, p));
}
