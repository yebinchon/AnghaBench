
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int PF_RULES_WLOCK () ;
 int PF_RULES_WUNLOCK () ;
 int * pflog_packet ;
 int * pflog_packet_ptr ;

__attribute__((used)) static int
pflog_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch (type) {
 case 129:
  PF_RULES_WLOCK();
  pflog_packet_ptr = pflog_packet;
  PF_RULES_WUNLOCK();
  break;
 case 128:
  PF_RULES_WLOCK();
  pflog_packet_ptr = ((void*)0);
  PF_RULES_WUNLOCK();
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return error;
}
