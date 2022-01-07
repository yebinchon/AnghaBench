
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int mingw_spawnve_fd (char const*,char const**,int *,int *,int,int ,int,int) ;

__attribute__((used)) static pid_t mingw_spawnv(const char *cmd, const char **argv, int prepend_cmd)
{
 return mingw_spawnve_fd(cmd, argv, ((void*)0), ((void*)0), prepend_cmd, 0, 1, 2);
}
