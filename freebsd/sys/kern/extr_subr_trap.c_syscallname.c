
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sysentvec {char const** sv_syscallnames; size_t sv_size; } ;
struct proc {struct sysentvec* p_sysent; } ;



const char *
syscallname(struct proc *p, u_int code)
{
 static const char unknown[] = "unknown";
 struct sysentvec *sv;

 sv = p->p_sysent;
 if (sv->sv_syscallnames == ((void*)0) || code >= sv->sv_size)
  return (unknown);
 return (sv->sv_syscallnames[code]);
}
