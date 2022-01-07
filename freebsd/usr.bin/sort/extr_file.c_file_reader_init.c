
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {size_t st_size; } ;
struct file_reader {char elsymb; int fd; size_t mmapsize; int cbsz; scalar_t__ bsz; int * file; void* buffer; scalar_t__ strbeg; int * mmapaddr; int * mmapptr; int fname; } ;
struct TYPE_2__ {scalar_t__ zflag; } ;


 void* MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_NOSYNC ;
 int MAP_PREFAULT_READ ;
 int O_RDONLY ;
 int PROT_READ ;
 int READ_CHUNK ;
 int close (int) ;
 int * compress_program ;
 int err (int,int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (void*,int,int,int *) ;
 scalar_t__ fstat (int,struct stat*) ;
 int memset (struct file_reader*,int ,int) ;
 void* mmap (int *,size_t,int ,int,int,int ) ;
 int open (char const*,int ) ;
 int * openfile (char const*,char*) ;
 void* sort_malloc (int) ;
 TYPE_1__ sort_opts_vals ;
 int sort_strdup (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ use_mmap ;

struct file_reader *
file_reader_init(const char *fsrc)
{
 struct file_reader *ret;

 if (fsrc == ((void*)0))
  fsrc = "-";

 ret = sort_malloc(sizeof(struct file_reader));
 memset(ret, 0, sizeof(struct file_reader));

 ret->elsymb = '\n';
 if (sort_opts_vals.zflag)
  ret->elsymb = 0;

 ret->fname = sort_strdup(fsrc);

 if (strcmp(fsrc, "-") && (compress_program == ((void*)0)) && use_mmap) {

  do {
   struct stat stat_buf;
   void *addr;
   size_t sz = 0;
   int fd, flags;

   flags = MAP_NOCORE | MAP_NOSYNC;

   fd = open(fsrc, O_RDONLY);
   if (fd < 0)
    err(2, ((void*)0));

   if (fstat(fd, &stat_buf) < 0) {
    close(fd);
    break;
   }

   sz = stat_buf.st_size;





   addr = mmap(((void*)0), sz, PROT_READ, flags, fd, 0);
   if (addr == MAP_FAILED) {
    close(fd);
    break;
   }

   ret->fd = fd;
   ret->mmapaddr = addr;
   ret->mmapsize = sz;
   ret->mmapptr = ret->mmapaddr;

  } while (0);
 }

 if (ret->mmapaddr == ((void*)0)) {
  ret->file = openfile(fsrc, "r");
  if (ret->file == ((void*)0))
   err(2, ((void*)0));

  if (strcmp(fsrc, "-")) {
   ret->cbsz = READ_CHUNK;
   ret->buffer = sort_malloc(ret->cbsz);
   ret->bsz = 0;
   ret->strbeg = 0;

   ret->bsz = fread(ret->buffer, 1, ret->cbsz, ret->file);
   if (ret->bsz == 0) {
    if (ferror(ret->file))
     err(2, ((void*)0));
   }
  }
 }

 return (ret);
}
