
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* linker_file_t ;
struct TYPE_6__ {int ndeps; int filename; struct TYPE_6__** deps; } ;


 int FILE ;
 int KLD_DPF (int ,char*) ;
 int M_LINKER ;
 int M_WAITOK ;
 int M_ZERO ;
 int SA_XLOCKED ;
 int kld_sx ;
 TYPE_1__** realloc (TYPE_1__**,int,int ,int) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
linker_file_add_dependency(linker_file_t file, linker_file_t dep)
{
 linker_file_t *newdeps;

 sx_assert(&kld_sx, SA_XLOCKED);
 file->deps = realloc(file->deps, (file->ndeps + 1) * sizeof(*newdeps),
     M_LINKER, M_WAITOK | M_ZERO);
 file->deps[file->ndeps] = dep;
 file->ndeps++;
 KLD_DPF(FILE, ("linker_file_add_dependency:"
     " adding %s as dependency for %s\n",
     dep->filename, file->filename));
 return (0);
}
