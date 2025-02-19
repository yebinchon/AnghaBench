
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ u_int8_t ;


 scalar_t__ PF_OP_EQ ;
 scalar_t__ PF_OP_NE ;
 scalar_t__ UID_MAX ;
 int pf_match (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
pf_match_uid(u_int8_t op, uid_t a1, uid_t a2, uid_t u)
{
 if (u == UID_MAX && op != PF_OP_EQ && op != PF_OP_NE)
  return (0);
 return (pf_match(op, a1, a2, u));
}
