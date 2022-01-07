
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {int pl_event; } ;





__attribute__((used)) static const char *
decode_pl_event(struct ptrace_lwpinfo *lwpinfo)
{

 switch (lwpinfo->pl_event) {
 case 129:
  return ("NONE");

 case 128:
  return ("SIG");

 default:
  return ("UNKNOWN");
 }
}
