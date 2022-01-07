
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {size_t stringspace; int * endp; int * begin_argv; int * buf; int * fname; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 size_t ARG_MAX ;
 int E2BIG ;
 int ENAMETOOLONG ;
 int KASSERT (int,char*) ;
 int PATH_MAX ;
 int UIO_SYSSPACE ;
 int copyinstr (char const*,int *,int ,size_t*) ;
 int copystr (char const*,int *,int ,size_t*) ;
 size_t exec_map_entry_size ;

int
exec_args_add_fname(struct image_args *args, const char *fname,
    enum uio_seg segflg)
{
 int error;
 size_t length;

 KASSERT(args->fname == ((void*)0), ("fname already appended"));
 KASSERT(args->endp == ((void*)0), ("already appending to args"));

 if (fname != ((void*)0)) {
  args->fname = args->buf;
  error = segflg == UIO_SYSSPACE ?
      copystr(fname, args->fname, PATH_MAX, &length) :
      copyinstr(fname, args->fname, PATH_MAX, &length);
  if (error != 0)
   return (error == ENAMETOOLONG ? E2BIG : error);
 } else
  length = 0;


 args->endp = args->buf + length;

 args->begin_argv = args->endp;
 KASSERT(exec_map_entry_size - length >= ARG_MAX,
     ("too little space remaining for arguments %zu < %zu",
     exec_map_entry_size - length, (size_t)ARG_MAX));
 args->stringspace = ARG_MAX;

 return (0);
}
