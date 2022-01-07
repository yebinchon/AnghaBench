
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DoCommand (int,char**) ;
 int MAX_ARGS ;
 int WHITESPACE ;
 char* strtok (char*,int ) ;

__attribute__((used)) static int
DoParseCommand(const char *line)
{
 char *av[MAX_ARGS];
 int ac;


 for (ac = 0, av[0] = strtok((char *)line, WHITESPACE);
     ac < MAX_ARGS - 1 && av[ac];
     av[++ac] = strtok(((void*)0), WHITESPACE));


 return (DoCommand(ac, av));
}
