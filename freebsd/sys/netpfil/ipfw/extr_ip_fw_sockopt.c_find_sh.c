
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ipfw_sopt_handler {int * handler; int version; int opcode; } ;
typedef int sopt_handler_f ;
typedef int h ;


 scalar_t__ bsearch (struct ipfw_sopt_handler*,int ,int ,int,int ) ;
 int compare_sh ;
 int ctl3_handlers ;
 int ctl3_hsize ;
 int memset (struct ipfw_sopt_handler*,int ,int) ;

__attribute__((used)) static struct ipfw_sopt_handler *
find_sh(uint16_t code, uint8_t version, sopt_handler_f *handler)
{
 struct ipfw_sopt_handler *sh, h;

 memset(&h, 0, sizeof(h));
 h.opcode = code;
 h.version = version;
 h.handler = handler;

 sh = (struct ipfw_sopt_handler *)bsearch(&h, ctl3_handlers,
     ctl3_hsize, sizeof(h), compare_sh);

 return (sh);
}
