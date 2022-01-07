
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sym_mfree (int *,void*,int,char*) ;
 int mp0 ;

__attribute__((used)) static void sym_mfree(void *ptr, int size, char *name)
{

 __sym_mfree(&mp0, ptr, size, name);

}
