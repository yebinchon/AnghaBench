
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;






 int MPT_STATE (int ) ;

__attribute__((used)) static const char *
mpt_state(u_int32_t mb)
{
 const char *text;

 switch (MPT_STATE(mb)) {
  case 129: text = "Reset"; break;
  case 130: text = "Ready"; break;
  case 128:text = "Running"; break;
  case 131: text = "Fault"; break;
  default: text = "Unknown"; break;
 }
 return text;
}
