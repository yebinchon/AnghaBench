
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHELL ;
 int execl (char*,char*,char*,char*,char*) ;
 int shell_uid () ;
 char* strrchr (char*,char) ;
 char* value (int ) ;

__attribute__((used)) static void
execute(char *s)
{
 char *cp;

 if ((cp = strrchr(value(SHELL), '/')) == ((void*)0))
  cp = value(SHELL);
 else
  cp++;
 shell_uid();
 execl(value(SHELL), cp, "-c", s, (char *)((void*)0));
}
