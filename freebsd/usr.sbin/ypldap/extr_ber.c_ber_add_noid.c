
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_oid {int bo_n; int bo_id; } ;
struct ber_element {int dummy; } ;


 int BER_MAX_OID_LEN ;
 int bcopy (int *,int *,int) ;
 struct ber_element* ber_add_oid (struct ber_element*,struct ber_oid*) ;

struct ber_element *
ber_add_noid(struct ber_element *prev, struct ber_oid *o, int n)
{
 struct ber_oid no;

 if (n > BER_MAX_OID_LEN)
  return (((void*)0));
 no.bo_n = n;
 bcopy(&o->bo_id, &no.bo_id, sizeof(no.bo_id));

 return (ber_add_oid(prev, &no));
}
