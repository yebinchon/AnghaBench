
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int err (int,char*) ;
 int * fgets (char*,int,int ) ;
 int printf (char*) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strtol (char*,int ,int ) ;

int
get_integer(void)
{
 char buf[32];

 printf("\nEnter integer value>");

 if (fgets(buf, sizeof(buf), stdin) == ((void*)0))
  err(1, "Cannot read input");

 if (strcmp(buf, "x\n") == 0)
  return (-1);
 if (strcmp(buf, "r\n") == 0)
  return (-2);

 return ((int)strtol(buf, 0, 0));
}
