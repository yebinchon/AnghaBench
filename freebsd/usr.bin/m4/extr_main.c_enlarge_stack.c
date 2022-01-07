
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stae ;


 int STACKMAX ;
 int mstack ;
 int sstack ;
 int xrealloc (int ,int,char*,unsigned long) ;
 int xreallocarray (int ,int,int,char*,unsigned long) ;

__attribute__((used)) static void
enlarge_stack(void)
{
 STACKMAX += STACKMAX/2;
 mstack = xreallocarray(mstack, STACKMAX, sizeof(stae),
     "Evaluation stack overflow (%lu)",
     (unsigned long)STACKMAX);
 sstack = xrealloc(sstack, STACKMAX,
     "Evaluation stack overflow (%lu)",
     (unsigned long)STACKMAX);
}
