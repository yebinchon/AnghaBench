
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e_FmPortExceptions ;




__attribute__((used)) static const char *
dtsec_fm_port_ex_to_str(e_FmPortExceptions exception)
{

 switch (exception) {
 case 128:
  return ("IM: RX busy");
 default:
  return ("<Unknown Exception>");
 }
}
