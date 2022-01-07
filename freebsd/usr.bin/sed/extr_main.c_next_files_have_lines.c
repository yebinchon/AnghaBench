
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_flist {int fname; struct s_flist* next; } ;
typedef int FILE ;


 int EOF ;
 int fclose (int *) ;
 struct s_flist* files ;
 int * fopen (int ,char*) ;
 int getc (int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
next_files_have_lines(void)
{
 struct s_flist *file;
 FILE *file_fd;
 int ch;

 file = files;
 while ((file = file->next) != ((void*)0)) {
  if ((file_fd = fopen(file->fname, "r")) == ((void*)0))
   continue;

  if ((ch = getc(file_fd)) != EOF) {




   ungetc(ch, file_fd);
   fclose(file_fd);
   return (1);
  }

  fclose(file_fd);
 }

 return (0);
}
