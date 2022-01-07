
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {size_t stringspace; int * endp; int * begin_argv; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int E2BIG ;
 int ENAMETOOLONG ;
 int KASSERT (int ,char*) ;
 int UIO_SYSSPACE ;
 int copyinstr (char const*,int *,size_t,size_t*) ;
 int copystr (char const*,int *,size_t,size_t*) ;

__attribute__((used)) static int
exec_args_add_str(struct image_args *args, const char *str,
    enum uio_seg segflg, int *countp)
{
 int error;
 size_t length;

 KASSERT(args->endp != ((void*)0), ("endp not initialized"));
 KASSERT(args->begin_argv != ((void*)0), ("begin_argp not initialized"));

 error = (segflg == UIO_SYSSPACE) ?
     copystr(str, args->endp, args->stringspace, &length) :
     copyinstr(str, args->endp, args->stringspace, &length);
 if (error != 0)
  return (error == ENAMETOOLONG ? E2BIG : error);
 args->stringspace -= length;
 args->endp += length;
 (*countp)++;

 return (0);
}
