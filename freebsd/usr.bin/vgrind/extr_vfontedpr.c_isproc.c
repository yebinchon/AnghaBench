
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ blklevel ;
 int * expmatch (char*,int ,char*) ;
 int l_prcbeg ;
 int l_toplex ;
 char* pname ;

__attribute__((used)) static bool
isproc(char *s)
{
    pname[0] = '\0';
    if (!l_toplex || blklevel == 0)
 if (expmatch(s, l_prcbeg, pname) != ((void*)0)) {
     return (1);
 }
    return (0);
}
