
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_file_t ;


 int LINKER_LOOKUP_SET (int ,char const*,void*,void*,int*) ;
 int SA_LOCKED ;
 int kld_sx ;
 int sx_assert (int *,int ) ;

int
linker_file_lookup_set(linker_file_t file, const char *name,
    void *firstp, void *lastp, int *countp)
{

 sx_assert(&kld_sx, SA_LOCKED);
 return (LINKER_LOOKUP_SET(file, name, firstp, lastp, countp));
}
