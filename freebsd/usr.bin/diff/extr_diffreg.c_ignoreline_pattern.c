
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int ignore_re ;
 int regexec (int *,char*,int ,int *,int ) ;

__attribute__((used)) static bool
ignoreline_pattern(char *line)
{
 int ret;

 ret = regexec(&ignore_re, line, 0, ((void*)0), 0);
 free(line);
 return (ret == 0);
}
