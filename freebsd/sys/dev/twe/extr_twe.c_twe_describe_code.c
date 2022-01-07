
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct twe_code_lookup {char* string; scalar_t__ code; } ;



char *
twe_describe_code(struct twe_code_lookup *table, u_int32_t code)
{
    int i;

    for (i = 0; table[i].string != ((void*)0); i++)
 if (table[i].code == code)
     return(table[i].string);
    return(table[i+1].string);
}
