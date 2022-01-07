
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fgetNUL (char*,int,int ) ;
 int hashit (char*,int ,int) ;
 int mesgread ;
 int rewind (int ) ;
 scalar_t__ strlen (char*) ;

void
inithash(void)
{
 char buf[512];
 int mesgpt = 0;

 rewind(mesgread);
 while (fgetNUL(buf, sizeof buf, mesgread) != 0) {
  hashit(buf, 0, mesgpt);
  mesgpt += strlen(buf) + 2;
 }
}
