
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t LINENUM ;


 char** p_line ;

char *
pfetch(LINENUM line)
{
 return p_line[line];
}
