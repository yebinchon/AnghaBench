
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_flist {char* fname; struct s_flist* next; } ;


 int err (int,char*) ;
 struct s_flist** fl_nextp ;
 struct s_flist* malloc (int) ;

__attribute__((used)) static void
add_file(char *s)
{
 struct s_flist *fp;

 if ((fp = malloc(sizeof(struct s_flist))) == ((void*)0))
  err(1, "malloc");
 fp->next = ((void*)0);
 *fl_nextp = fp;
 fp->fname = s;
 fl_nextp = &fp->next;
}
