
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_data {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
typedef int ipfw_obj_ntlv ;


 int ENOMEM ;
 int ipfw_export_obj_ntlv (struct named_object*,int *) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;

__attribute__((used)) static int
export_objhash_ntlv_internal(struct namedobj_instance *ni,
    struct named_object *no, void *arg)
{
 struct sockopt_data *sd;
 ipfw_obj_ntlv *ntlv;

 sd = (struct sockopt_data *)arg;
 ntlv = (ipfw_obj_ntlv *)ipfw_get_sopt_space(sd, sizeof(*ntlv));
 if (ntlv == ((void*)0))
  return (ENOMEM);
 ipfw_export_obj_ntlv(no, ntlv);
 return (0);
}
