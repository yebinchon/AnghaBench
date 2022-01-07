
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_id {int len; int type; uintptr_t id; scalar_t__ subtype; } ;



__attribute__((used)) static void
oid_fill(struct dn_id *oid, int len, int type, uintptr_t id)
{
 oid->len = len;
 oid->type = type;
 oid->subtype = 0;
 oid->id = id;
}
