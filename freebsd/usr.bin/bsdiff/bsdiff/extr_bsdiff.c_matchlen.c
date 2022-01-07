
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef size_t off_t ;



__attribute__((used)) static off_t matchlen(u_char *old,off_t oldsize,u_char *new,off_t newsize)
{
 off_t i;

 for(i=0;(i<oldsize)&&(i<newsize);i++)
  if(old[i]!=new[i]) break;

 return i;
}
