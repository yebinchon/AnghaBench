
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_id {scalar_t__ len; scalar_t__ type; } ;
struct dn_flow {int dummy; } ;


 int D (char*,scalar_t__,char const*,int,int,int) ;
 scalar_t__ DN_QUEUE ;
 int ND (char*,scalar_t__,char const*,int,int) ;
 int memcpy (char*,void*,int) ;

__attribute__((used)) static int
copy_obj_q(char **start, char *end, void *_o, const char *msg, int i)
{
 struct dn_id *o = _o;
 int have = end - *start;
 int len = sizeof(struct dn_flow);

 if (have < len || o->len == 0 || o->type != DN_QUEUE) {
  D("ERROR type %d %s %d have %d need %d",
   o->type, msg, i, have, len);
  return 1;
 }
 ND("type %d %s %d len %d", o->type, msg, i, len);
 memcpy(*start, _o, len);
 ((struct dn_id*)(*start))->len = len;
 *start += len;
 return 0;
}
