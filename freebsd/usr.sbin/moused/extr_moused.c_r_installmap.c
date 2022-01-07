
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int MOUSE_MAXBUTTON ;
 int TRUE ;
 int atoi (char*) ;
 int * bstate ;
 scalar_t__ isdigit (char) ;
 int isspace (char) ;
 int ** mstate ;
 int* p2l ;
 char* skipspace (char*) ;

__attribute__((used)) static int
r_installmap(char *arg)
{
    int pbutton;
    int lbutton;
    char *s;

    while (*arg) {
 arg = skipspace(arg);
 s = arg;
 while (isdigit(*arg))
     ++arg;
 arg = skipspace(arg);
 if ((arg <= s) || (*arg != '='))
     return (FALSE);
 lbutton = atoi(s);

 arg = skipspace(++arg);
 s = arg;
 while (isdigit(*arg))
     ++arg;
 if ((arg <= s) || (!isspace(*arg) && (*arg != '\0')))
     return (FALSE);
 pbutton = atoi(s);

 if ((lbutton <= 0) || (lbutton > MOUSE_MAXBUTTON))
     return (FALSE);
 if ((pbutton <= 0) || (pbutton > MOUSE_MAXBUTTON))
     return (FALSE);
 p2l[pbutton - 1] = 1 << (lbutton - 1);
 mstate[lbutton - 1] = &bstate[pbutton - 1];
    }

    return (TRUE);
}
