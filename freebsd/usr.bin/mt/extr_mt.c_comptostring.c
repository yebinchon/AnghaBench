
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct compression_types {char const* name; int comp_number; } ;


 int MT_COMP_DISABLED ;
 int MT_COMP_UNSUPP ;
 struct compression_types* comp_types ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
comptostring(u_int32_t comp)
{
 static char buf[20];
 const struct compression_types *ct;

 if (comp == MT_COMP_DISABLED)
  return "disabled";
 else if (comp == MT_COMP_UNSUPP)
  return "unsupported";

 for (ct = comp_types; ct->name; ct++)
  if (ct->comp_number == comp)
   break;

 if (ct->comp_number == 0xf0f0f0f0) {
  sprintf(buf, "0x%x", comp);
  return(buf);
 } else
  return(ct->name);
}
