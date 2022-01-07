
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gss_OID ;
struct TYPE_4__ {scalar_t__ length; int elements; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
kgss_oid_equal(const gss_OID oid1, const gss_OID oid2)
{

 if (oid1 == oid2)
  return (1);
 if (!oid1 || !oid2)
  return (0);
 if (oid1->length != oid2->length)
  return (0);
 if (memcmp(oid1->elements, oid2->elements, oid1->length))
  return (0);
 return (1);
}
