
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ipfw_sopt_handler {int refcnt; } ;


 int CTL3_LOCK () ;
 int CTL3_UNLOCK () ;
 int EINVAL ;
 int ctl3_refct ;
 struct ipfw_sopt_handler* find_sh (int,int,int *) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
find_ref_sh(uint16_t opcode, uint8_t version, struct ipfw_sopt_handler *psh)
{
 struct ipfw_sopt_handler *sh;

 CTL3_LOCK();
 if ((sh = find_sh(opcode, version, ((void*)0))) == ((void*)0)) {
  CTL3_UNLOCK();
  printf("ipfw: ipfw_ctl3 invalid option %d""v""%d\n",
      opcode, version);
  return (EINVAL);
 }
 sh->refcnt++;
 ctl3_refct++;

 *psh = *sh;
 CTL3_UNLOCK();

 return (0);
}
