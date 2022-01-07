
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockopt_data {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
typedef int ipfw_obj_ntlv ;


 int ENOMEM ;
 int KASSERT (int ,char*) ;
 int ipfw_export_obj_ntlv (struct named_object*,int *) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;

__attribute__((used)) static int
export_objhash_ntlv(struct namedobj_instance *ni, uint16_t kidx,
    struct sockopt_data *sd)
{
 struct named_object *no;
 ipfw_obj_ntlv *ntlv;

 no = ipfw_objhash_lookup_kidx(ni, kidx);
 KASSERT(no != ((void*)0), ("invalid object kernel index passed"));

 ntlv = (ipfw_obj_ntlv *)ipfw_get_sopt_space(sd, sizeof(*ntlv));
 if (ntlv == ((void*)0))
  return (ENOMEM);

 ipfw_export_obj_ntlv(no, ntlv);
 return (0);
}
