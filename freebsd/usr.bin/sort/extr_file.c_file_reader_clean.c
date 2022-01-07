
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_reader {scalar_t__ file; scalar_t__ fname; scalar_t__ buffer; scalar_t__ fd; int mmapsize; scalar_t__ mmapaddr; } ;


 int close (scalar_t__) ;
 int closefile (scalar_t__,scalar_t__) ;
 int memset (struct file_reader*,int ,int) ;
 int munmap (scalar_t__,int ) ;
 int sort_free (scalar_t__) ;
 scalar_t__ stdin ;

__attribute__((used)) static void
file_reader_clean(struct file_reader *fr)
{

 if (fr) {
  if (fr->mmapaddr)
   munmap(fr->mmapaddr, fr->mmapsize);

  if (fr->fd)
   close(fr->fd);

  if (fr->buffer)
   sort_free(fr->buffer);

  if (fr->file)
   if (fr->file != stdin)
    closefile(fr->file, fr->fname);

  if(fr->fname)
   sort_free(fr->fname);

  memset(fr, 0, sizeof(struct file_reader));
 }
}
