
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static int
aq_strcmp(char *actual, char *possible)
{
    if (actual == ((void*)0) || possible == ((void*)0))
 return (TRUE);
    return (strncmp(actual, possible, strlen(possible)) == 0);
}
