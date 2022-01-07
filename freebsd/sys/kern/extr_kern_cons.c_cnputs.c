
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnputsn (char*,int ) ;
 int strlen (char*) ;

void
cnputs(char *p)
{
 cnputsn(p, strlen(p));
}
