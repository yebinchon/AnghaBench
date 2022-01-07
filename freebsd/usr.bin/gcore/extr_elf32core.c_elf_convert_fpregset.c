
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int dummy; } ;
typedef int elfcore_fpregset_t ;


 int memcpy (int *,struct fpreg*,int) ;

__attribute__((used)) static void
elf_convert_fpregset(elfcore_fpregset_t *rd, struct fpreg *rs)
{


 memcpy(rd, rs, sizeof(*rd));







}
