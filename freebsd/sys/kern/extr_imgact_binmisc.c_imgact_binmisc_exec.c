
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct image_params {char* image_header; int interpreted; char* interpreter_name; TYPE_3__* args; } ;
struct TYPE_4__ {size_t ibe_interp_length; char* ibe_interpreter; scalar_t__ ibe_interp_argcnt; } ;
typedef TYPE_1__ imgact_binmisc_entry_t ;
struct TYPE_5__ {char* fname; char* begin_argv; int argc; int fd; } ;


 int EINVAL ;
 int ENOEXEC ;
 int IMGACT_BINMISC ;


 char* KMOD_NAME ;
 int exec_args_adjust_args (TYPE_3__*,int ,size_t) ;
 TYPE_1__* imgact_binmisc_find_interpreter (char const*) ;
 int interp_list_sx ;
 int memcpy (char*,char const*,size_t) ;
 int printf (char*,char*,char) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,int ) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
imgact_binmisc_exec(struct image_params *imgp)
{
 const char *image_header = imgp->image_header;
 const char *fname = ((void*)0);
 int error = 0;
 size_t offset, l;
 imgact_binmisc_entry_t *ibe;
 struct sbuf *sname;
 char *s, *d;


 sx_slock(&interp_list_sx);
 if ((ibe = imgact_binmisc_find_interpreter(image_header)) == ((void*)0)) {
  sx_sunlock(&interp_list_sx);
  return (-1);
 }


 if (imgp->interpreted & IMGACT_BINMISC) {
  sx_sunlock(&interp_list_sx);
  return (ENOEXEC);
 }

 imgp->interpreted |= IMGACT_BINMISC;

 if (imgp->args->fname != ((void*)0)) {
  fname = imgp->args->fname;
  sname = ((void*)0);
 } else {

  sname = sbuf_new_auto();
  sbuf_printf(sname, "/dev/fd/%d", imgp->args->fd);
  sbuf_finish(sname);
  fname = sbuf_data(sname);
 }
 offset = ibe->ibe_interp_length;


 s = ibe->ibe_interpreter;
 while (1) {
  s = strchr(s, '#');
  if (!s)
   break;

  s++;
  switch(*s) {
  case 128:

   offset--;
   break;

  case 129:

   offset += strlen(fname) - 2;
   break;

  default:

   sx_sunlock(&interp_list_sx);
   printf("%s: Unknown macro #%c sequence in "
       "interpreter string\n", KMOD_NAME, *(s + 1));
   error = EINVAL;
   goto done;
  }
  s++;
 }


 error = exec_args_adjust_args(imgp->args, 0, offset);
 if (error != 0) {
  sx_sunlock(&interp_list_sx);
  goto done;
 }


 imgp->args->argc += ibe->ibe_interp_argcnt;





 s = ibe->ibe_interpreter;
 d = imgp->args->begin_argv;
 while(*s != '\0') {
  switch (*s) {
  case '#':

   s++;
   switch(*s) {
   case 128:

    *d++ = '#';
    break;

   case 129:

    if ((l = strlen(fname)) != 0) {
     memcpy(d, fname, l);
     d += l;
    }
    break;

   default:

    break;
   }
   break;

  case ' ':

   *d++ = '\0';
   break;

  default:
   *d++ = *s;
   break;
  }
  s++;
 }
 *d = '\0';
 sx_sunlock(&interp_list_sx);

 if (!error)
  imgp->interpreter_name = imgp->args->begin_argv;


done:
 if (sname)
  sbuf_delete(sname);
 return (error);
}
