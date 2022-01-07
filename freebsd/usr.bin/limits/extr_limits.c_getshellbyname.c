
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 int SH_SH ;
 TYPE_1__* shellparm ;
 int strcspn (char const*,char*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
getshellbyname(const char * shell)
{
    int i;
    const char * q;
    const char * p = strrchr(shell, '/');

    p = p ? p+1 : shell;
    for (i = 0; (q = shellparm[i].name) != ((void*)0); i++) {
 while (*q) {
     int j = strcspn(q, "|");

     if (j == 0)
  break;
     if (strncmp(p, q, j) == 0)
  return i;
     if (*(q += j))
  ++q;
 }
    }
    return SH_SH;
}
