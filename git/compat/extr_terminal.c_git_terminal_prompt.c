
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getpass (char const*) ;

char *git_terminal_prompt(const char *prompt, int echo)
{
 return getpass(prompt);
}
