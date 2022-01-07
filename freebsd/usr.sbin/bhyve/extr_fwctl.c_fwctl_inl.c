
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int REQ ;

 int be_state ;
 int fwctl_response (int*) ;

__attribute__((used)) static uint32_t
fwctl_inl(void)
{
 uint32_t retval;

 switch (be_state) {
 case 128:
  if (fwctl_response(&retval))
   be_state = REQ;
  break;
 default:
  retval = 0xffffffff;
  break;
 }

 return (retval);
}
