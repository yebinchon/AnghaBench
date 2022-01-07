
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int if_clone_advanced (int ,int ,int ,int ,int ) ;
 int if_clone_detach (int ) ;
 int stf_clone_create ;
 int stf_clone_destroy ;
 int stf_clone_match ;
 int stf_cloner ;
 int stfname ;

__attribute__((used)) static int
stfmodevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  stf_cloner = if_clone_advanced(stfname, 0, stf_clone_match,
      stf_clone_create, stf_clone_destroy);
  break;
 case 128:
  if_clone_detach(stf_cloner);
  break;
 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
