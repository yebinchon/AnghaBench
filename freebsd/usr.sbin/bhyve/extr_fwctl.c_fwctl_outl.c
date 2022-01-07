
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



 int RESP ;
 int be_state ;
 int fwctl_request (int ) ;

__attribute__((used)) static void
fwctl_outl(uint32_t val)
{

 switch (be_state) {
 case 128:
  if (fwctl_request(val))
   be_state = RESP;
 default:
  break;
 }

}
