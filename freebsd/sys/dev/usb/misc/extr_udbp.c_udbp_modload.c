
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 char* NG_UDBP_NODE_TYPE ;
 int ng_newtype (int *) ;
 int ng_rmtype (int *) ;
 int ng_udbp_typestruct ;
 int printf (char*,char*,int) ;

__attribute__((used)) static int
udbp_modload(module_t mod, int event, void *data)
{
 int error;

 switch (event) {
 case 129:
  error = ng_newtype(&ng_udbp_typestruct);
  if (error != 0) {
   printf("%s: Could not register "
       "Netgraph node type, error=%d\n",
       NG_UDBP_NODE_TYPE, error);
  }
  break;

 case 128:
  error = ng_rmtype(&ng_udbp_typestruct);
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
