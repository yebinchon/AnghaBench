
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;


 int M_IPFW ;
 int free (struct named_object*,int ) ;

__attribute__((used)) static int
destroy_value(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{

 free(no, M_IPFW);
 return (0);
}
