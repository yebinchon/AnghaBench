
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_data {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct dump_args {scalar_t__ tcount; int* bmask; } ;


 int IPFW_TABLES_MAX ;
 int export_objhash_ntlv (struct namedobj_instance*,int,struct sockopt_data*) ;

__attribute__((used)) static int
export_named_objects(struct namedobj_instance *ni, struct dump_args *da,
    struct sockopt_data *sd)
{
 int error, i;

 for (i = 0; i < IPFW_TABLES_MAX && da->tcount > 0; i++) {
  if ((da->bmask[i / 32] & (1 << (i % 32))) == 0)
   continue;
  if ((error = export_objhash_ntlv(ni, i, sd)) != 0)
   return (error);
  da->tcount--;
 }
 return (0);
}
