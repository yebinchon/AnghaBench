
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 char* NG_UBT_NODE_TYPE ;
 int ng_newtype (int *) ;
 int ng_rmtype (int *) ;
 int printf (char*,char*,int) ;
 int typestruct ;

__attribute__((used)) static int
ubt_modevent(module_t mod, int event, void *data)
{
 int error;

 switch (event) {
 case 129:
  error = ng_newtype(&typestruct);
  if (error != 0)
   printf("%s: Could not register Netgraph node type, " "error=%d\n", NG_UBT_NODE_TYPE, error);

  break;

 case 128:
  error = ng_rmtype(&typestruct);
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
