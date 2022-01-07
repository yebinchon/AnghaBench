
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 char* prompt ;

__attribute__((used)) static char *
GetPrompt(EditLine *e)
{
    if (prompt == ((void*)0))
        prompt = "";
    return prompt;
}
