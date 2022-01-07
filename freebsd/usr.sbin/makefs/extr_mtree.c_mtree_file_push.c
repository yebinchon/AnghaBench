
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_fileinfo {scalar_t__ line; int * fp; int * name; } ;
typedef int FILE ;


 int ENOMEM ;
 int SLIST_INSERT_HEAD (int *,struct mtree_fileinfo*,int ) ;
 struct mtree_fileinfo* emalloc (int) ;
 void* estrdup (char const*) ;
 int free (struct mtree_fileinfo*) ;
 int mtree_fileinfo ;
 int next ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
mtree_file_push(const char *name, FILE *fp)
{
 struct mtree_fileinfo *fi;

 fi = emalloc(sizeof(*fi));
 if (strcmp(name, "-") == 0)
  fi->name = estrdup("(stdin)");
 else
  fi->name = estrdup(name);
 if (fi->name == ((void*)0)) {
  free(fi);
  return (ENOMEM);
 }

 fi->fp = fp;
 fi->line = 0;

 SLIST_INSERT_HEAD(&mtree_fileinfo, fi, next);
 return (0);
}
