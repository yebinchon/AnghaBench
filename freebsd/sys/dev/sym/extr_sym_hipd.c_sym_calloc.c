
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __sym_calloc (int *,int,char*) ;
 int mp0 ;

__attribute__((used)) static void *sym_calloc(int size, char *name)
{
 void *m;

 m = __sym_calloc(&mp0, size, name);

 return m;
}
