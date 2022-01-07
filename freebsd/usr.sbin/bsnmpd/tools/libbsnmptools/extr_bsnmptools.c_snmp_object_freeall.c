
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snmp_toolinfo {int snmp_objectlist; } ;
struct TYPE_4__ {struct snmp_object* octets; } ;
struct TYPE_5__ {TYPE_1__ octetstring; } ;
struct TYPE_6__ {scalar_t__ syntax; TYPE_2__ v; } ;
struct snmp_object {TYPE_3__ val; } ;


 struct snmp_object* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ SNMP_SYNTAX_OCTETSTRING ;
 int free (struct snmp_object*) ;
 int link ;

__attribute__((used)) static void
snmp_object_freeall(struct snmp_toolinfo *snmptoolctx)
{
 struct snmp_object *o;

 while ((o = SLIST_FIRST(&snmptoolctx->snmp_objectlist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&snmptoolctx->snmp_objectlist, link);

  if (o->val.syntax == SNMP_SYNTAX_OCTETSTRING &&
      o->val.v.octetstring.octets != ((void*)0))
   free(o->val.v.octetstring.octets);
  free(o);
 }
}
