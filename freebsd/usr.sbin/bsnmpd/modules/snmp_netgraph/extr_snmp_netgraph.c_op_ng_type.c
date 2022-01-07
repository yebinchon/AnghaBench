
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_8__ {int integer; } ;
struct TYPE_9__ {int* subs; } ;
struct snmp_value {TYPE_2__ v; TYPE_3__ var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct ngtype {int index; } ;
typedef enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
typedef int asn_subid_t ;
struct TYPE_7__ {int int1; size_t int2; int * ptr2; } ;


 int ENOENT ;
 struct ngtype* FIND_OBJECT_OID (int *,TYPE_3__*,int) ;

 struct ngtype* NEXT_OBJECT_OID (int *,TYPE_3__*,int) ;
 size_t NG_TYPESIZ ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_NAME ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 int SNMP_ERR_NOT_WRITEABLE ;
 int SNMP_ERR_NO_CREATION ;
 int SNMP_ERR_UNDO_FAILED ;
 int SNMP_ERR_WRONG_VALUE ;





 int TRUTH_GET (int) ;
 int TRUTH_OK (int) ;
 int abort () ;
 int errno ;
 int fetch_types () ;
 int free (int *) ;
 int index_append (TYPE_3__*,int,int *) ;
 int index_decode (TYPE_3__*,int,int,int **,size_t*) ;
 int ngtype_list ;
 int ngtype_load (int *,size_t) ;
 int ngtype_unload (int *,size_t) ;

int
op_ng_type(struct snmp_context *ctx, struct snmp_value *value,
    u_int sub, u_int iidx, enum snmp_op op)
{
 asn_subid_t which = value->var.subs[sub - 1];
 struct ngtype *t;
 u_char *name;
 size_t namelen;
 int status = 1;
 int ret;

 switch (op) {

   case 130:
  if ((ret = fetch_types()) != 0)
   return (ret);
  if ((t = NEXT_OBJECT_OID(&ngtype_list, &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  index_append(&value->var, sub, &t->index);
  break;

   case 131:
  if ((ret = fetch_types()) != 0)
   return (ret);
  if ((t = FIND_OBJECT_OID(&ngtype_list, &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  break;

   case 128:
  if (index_decode(&value->var, sub, iidx, &name, &namelen))
   return (SNMP_ERR_NO_CREATION);
  if (namelen == 0 || namelen >= NG_TYPESIZ) {
   free(name);
   return (SNMP_ERR_NO_CREATION);
  }
  if ((ret = fetch_types()) != 0) {
   free(name);
   return (ret);
  }
  t = FIND_OBJECT_OID(&ngtype_list, &value->var, sub);

  if (which != 133) {
   free(name);
   if (t != ((void*)0))
    return (SNMP_ERR_NOT_WRITEABLE);
   return (SNMP_ERR_NO_CREATION);
  }
  if (!TRUTH_OK(value->v.integer)) {
   free(name);
   return (SNMP_ERR_WRONG_VALUE);
  }
  ctx->scratch->int1 = TRUTH_GET(value->v.integer);
  ctx->scratch->int1 |= (t != ((void*)0)) << 1;
  ctx->scratch->ptr2 = name;
  ctx->scratch->int2 = namelen;

  if (t == ((void*)0)) {

   if (ctx->scratch->int1 & 1) {

    if (ngtype_load(name, namelen) == -1) {
     free(name);
     if (errno == ENOENT)
      return (SNMP_ERR_INCONS_NAME);
     else
      return (SNMP_ERR_GENERR);
    }
   }
  } else {

   if (!(ctx->scratch->int1 & 1)) {

    if (ngtype_unload(name, namelen) == -1) {
     free(name);
     return (SNMP_ERR_GENERR);
    }
   }
  }
  return (SNMP_ERR_NOERROR);

   case 129:
  ret = SNMP_ERR_NOERROR;
  if (!(ctx->scratch->int1 & 2)) {

   if (ctx->scratch->int1 & 1) {

    if (ngtype_unload(ctx->scratch->ptr2,
        ctx->scratch->int2) == -1)
     ret = SNMP_ERR_UNDO_FAILED;
   }
  } else {

   if (!(ctx->scratch->int1 & 1)) {

    if (ngtype_load(ctx->scratch->ptr2,
        ctx->scratch->int2) == -1)
     ret = SNMP_ERR_UNDO_FAILED;
   }
  }
  free(ctx->scratch->ptr2);
  return (ret);

   case 132:
  free(ctx->scratch->ptr2);
  return (SNMP_ERR_NOERROR);

   default:
  abort();
 }




 switch (which) {

   case 133:
  value->v.integer = status;
  break;

   default:
  abort();
 }
 return (SNMP_ERR_NOERROR);
}
