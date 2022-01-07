
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;




 int vtcon_drain_all () ;

__attribute__((used)) static int
vtcon_modevent(module_t mod, int type, void *unused)
{
 int error;

 switch (type) {
 case 131:
  error = 0;
  break;
 case 130:
  error = 0;
  break;
 case 128:
  vtcon_drain_all();
  error = 0;
  break;
 case 129:
  error = 0;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
