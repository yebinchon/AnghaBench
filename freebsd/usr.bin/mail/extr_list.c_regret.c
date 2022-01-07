
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REGDEP ;
 int STRINGLEN ;
 int errx (int,char*) ;
 int lexnumber ;
 char* lexstring ;
 int * numberstack ;
 scalar_t__ regretp ;
 int* regretstack ;
 int savestr (char*) ;
 int * string_stack ;

void
regret(int token)
{
 if (++regretp >= REGDEP)
  errx(1, "Too many regrets");
 regretstack[regretp] = token;
 lexstring[STRINGLEN-1] = '\0';
 string_stack[regretp] = savestr(lexstring);
 numberstack[regretp] = lexnumber;
}
