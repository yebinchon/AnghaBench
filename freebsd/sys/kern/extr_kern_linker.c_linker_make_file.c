
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* linker_file_t ;
typedef scalar_t__ linker_class_t ;
typedef int kobj_class_t ;
struct TYPE_4__ {int refs; int modules; int common; scalar_t__ loadcnt; int * deps; scalar_t__ ndeps; int id; void* pathname; void* filename; scalar_t__ flags; scalar_t__ userrefs; scalar_t__ ctors_size; scalar_t__ ctors_addr; } ;


 int FILE ;
 int KLD_DPF (int ,char*) ;
 int LINKER_GET_NEXT_FILE_ID (int ) ;
 int M_LINKER ;
 int M_WAITOK ;
 int SA_XLOCKED ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int cold ;
 int kld_sx ;
 scalar_t__ kobj_create (int ,int ,int ) ;
 int link ;
 char* linker_basename (char const*) ;
 int linker_files ;
 scalar_t__ loadcnt ;
 void* strdup (char const*,int ) ;
 int sx_assert (int *,int ) ;

linker_file_t
linker_make_file(const char *pathname, linker_class_t lc)
{
 linker_file_t lf;
 const char *filename;

 if (!cold)
  sx_assert(&kld_sx, SA_XLOCKED);
 filename = linker_basename(pathname);

 KLD_DPF(FILE, ("linker_make_file: new file, filename='%s' for pathname='%s'\n", filename, pathname));
 lf = (linker_file_t)kobj_create((kobj_class_t)lc, M_LINKER, M_WAITOK);
 if (lf == ((void*)0))
  return (((void*)0));
 lf->ctors_addr = 0;
 lf->ctors_size = 0;
 lf->refs = 1;
 lf->userrefs = 0;
 lf->flags = 0;
 lf->filename = strdup(filename, M_LINKER);
 lf->pathname = strdup(pathname, M_LINKER);
 LINKER_GET_NEXT_FILE_ID(lf->id);
 lf->ndeps = 0;
 lf->deps = ((void*)0);
 lf->loadcnt = ++loadcnt;
 STAILQ_INIT(&lf->common);
 TAILQ_INIT(&lf->modules);
 TAILQ_INSERT_TAIL(&linker_files, lf, link);
 return (lf);
}
