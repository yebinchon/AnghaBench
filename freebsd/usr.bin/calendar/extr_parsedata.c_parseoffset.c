
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int
parseoffset(char *s)
{
 return strtol(s, ((void*)0), 10);
}
