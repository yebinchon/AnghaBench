
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mips_intrcnt_t ;


 int * intrcnt ;
 int intrcnt_index ;
 int mips_intrcnt_setname (int *,char const*) ;

mips_intrcnt_t
mips_intrcnt_create(const char* name)
{
 mips_intrcnt_t counter = &intrcnt[intrcnt_index++];

 mips_intrcnt_setname(counter, name);
 return counter;
}
