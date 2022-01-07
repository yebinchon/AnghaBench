
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_char ;
struct TYPE_3__ {int * octets; scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {TYPE_2__ v; } ;
typedef int ssize_t ;


 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_RES_UNAVAIL ;
 int * malloc (size_t) ;
 int memcpy (int *,scalar_t__ const*,size_t) ;

__attribute__((used)) static int
bits_get(struct snmp_value *value, const u_char *ptr, ssize_t len)
{
 int size;

 if (ptr == ((void*)0)) {
  value->v.octetstring.len = 0;
  value->v.octetstring.octets = ((void*)0);
  return (SNMP_ERR_NOERROR);
 }


 for (size = len; size > 0; size--)
  if (ptr[size - 1] != 0)
   break;
 if (size == 0)
  size = 1;

 value->v.octetstring.len = (u_long)size;
 if ((value->v.octetstring.octets = malloc((size_t)size)) == ((void*)0))
  return (SNMP_ERR_RES_UNAVAIL);
 memcpy(value->v.octetstring.octets, ptr, (size_t)size);
 return (SNMP_ERR_NOERROR);
}
