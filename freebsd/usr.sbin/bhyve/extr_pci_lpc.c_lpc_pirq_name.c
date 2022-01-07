
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char) ;
 int * lpc_bridge ;

char *
lpc_pirq_name(int pin)
{
 char *name;

 if (lpc_bridge == ((void*)0))
  return (((void*)0));
 asprintf(&name, "\\_SB.PC00.ISA.LNK%c,", 'A' + pin - 1);
 return (name);
}
