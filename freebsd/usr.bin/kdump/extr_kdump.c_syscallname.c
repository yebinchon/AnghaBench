
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int printf (char*,...) ;
 int syscallabi (int) ;
 scalar_t__ syscallno ;
 char* sysdecode_syscallname (int ,int) ;

__attribute__((used)) static void
syscallname(u_int code, u_int sv_flags)
{
 const char *name;

 name = sysdecode_syscallname(syscallabi(sv_flags), code);
 if (name == ((void*)0))
  printf("[%d]", code);
 else {
  printf("%s", name);
  if (syscallno)
   printf("[%d]", code);
 }
}
