
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;



 int iscsi_load () ;
 int iscsi_quiesce () ;
 int iscsi_unload () ;

__attribute__((used)) static int
iscsi_modevent(module_t mod, int what, void *arg)
{
 int error;

 switch (what) {
 case 130:
  error = iscsi_load();
  break;
 case 128:
  error = iscsi_unload();
  break;
 case 129:
  error = iscsi_quiesce();
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
