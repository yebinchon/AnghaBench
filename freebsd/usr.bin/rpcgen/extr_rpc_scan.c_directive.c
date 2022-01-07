
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curline ;

__attribute__((used)) static int
directive(char *line)
{
 return (line == curline && *line == '%');
}
