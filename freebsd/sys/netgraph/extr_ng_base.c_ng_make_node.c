
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_type {int (* constructor ) (int ) ;} ;
typedef int node_p ;


 int EINVAL ;
 int ENXIO ;
 int NG_NODE_UNREF (int ) ;
 int TRAP_ERROR () ;
 struct ng_type* ng_findtype (char const*) ;
 int ng_make_node_common (struct ng_type*,int *) ;
 int stub1 (int ) ;

int
ng_make_node(const char *typename, node_p *nodepp)
{
 struct ng_type *type;
 int error;


 if (typename == ((void*)0)) {
  TRAP_ERROR();
  return (EINVAL);
 }




 if ((type = ng_findtype(typename)) == ((void*)0))
  return (ENXIO);





 if (type->constructor != ((void*)0)) {
  if ((error = ng_make_node_common(type, nodepp)) == 0) {
   if ((error = ((*type->constructor)(*nodepp))) != 0) {
    NG_NODE_UNREF(*nodepp);
   }
  }
 } else {







  TRAP_ERROR();
  error = EINVAL;
 }
 return (error);
}
