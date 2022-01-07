
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userconf {int shell_default; int shells; int shelldir; } ;


 char* shell_path (int ,int ,int ) ;

__attribute__((used)) static char *
pw_shellpolicy(struct userconf * cnf)
{

 return shell_path(cnf->shelldir, cnf->shells, cnf->shell_default);
}
