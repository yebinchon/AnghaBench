
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FUNCNAMESIZE ;
 int g_funcname ;
 int strlcpy (int ,char*,size_t) ;

void
set_funcname(char *bufp, size_t bufsize)
{
 strlcpy(g_funcname, bufp,
     bufsize < FUNCNAMESIZE ? bufsize : FUNCNAMESIZE);
}
