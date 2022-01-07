
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int MAX_NGD ;


 int delete_unrhdr (int ) ;
 int new_unrhdr (int ,int ,int *) ;
 int ngd_unit ;

__attribute__((used)) static int
ng_device_mod_event(module_t mod, int event, void *data)
{
 int error = 0;

 switch (event) {
 case 129:
  ngd_unit = new_unrhdr(0, MAX_NGD, ((void*)0));
  break;
 case 128:
  delete_unrhdr(ngd_unit);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
