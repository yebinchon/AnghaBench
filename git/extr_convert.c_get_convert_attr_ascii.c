
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct conv_attrs {int attr_action; } ;
 int convert_attrs (struct index_state const*,struct conv_attrs*,char const*) ;

const char *get_convert_attr_ascii(const struct index_state *istate, const char *path)
{
 struct conv_attrs ca;

 convert_attrs(istate, &ca, path);
 switch (ca.attr_action) {
 case 128:
  return "";
 case 132:
  return "-text";
 case 131:
  return "text";
 case 129:
  return "text eol=lf";
 case 130:
  return "text eol=crlf";
 case 135:
  return "text=auto";
 case 134:
  return "text=auto eol=crlf";
 case 133:
  return "text=auto eol=lf";
 }
 return "";
}
