
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int save1 (char*,int,char*,int ) ;
 int saveignore ;

int
save(void *v)
{
 char *str = v;

 return (save1(str, 1, "save", saveignore));
}
