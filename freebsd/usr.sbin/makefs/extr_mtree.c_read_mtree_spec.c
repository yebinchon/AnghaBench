
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathtmp ;
typedef int FILE ;


 scalar_t__ IS_DOT (char*) ;
 scalar_t__ IS_DOTDOT (char*) ;
 int PATH_MAX ;
 int errno ;
 int getc (int *) ;
 int memmove (char*,char*,scalar_t__) ;
 int mtree_current ;
 int mtree_error (char*) ;
 int mtree_root ;
 int read_mtree_spec1 (int *,int,char*) ;
 int read_word (int *,char*,int) ;
 int skip_to (int *,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 int strnunvis (char*,int,char*) ;

__attribute__((used)) static int
read_mtree_spec(FILE *fp)
{
 char pathspec[PATH_MAX], pathtmp[4*PATH_MAX + 1];
 char *cp;
 int error;

 error = read_word(fp, pathtmp, sizeof(pathtmp));
 if (error)
  goto out;
 if (strnunvis(pathspec, PATH_MAX, pathtmp) == -1) {
  error = errno;
  goto out;
 }
 error = 0;

 cp = strchr(pathspec, '/');
 if (cp != ((void*)0)) {

  mtree_current = mtree_root;

  do {
   *cp++ = '\0';


   if (IS_DOTDOT(pathspec)) {
    mtree_error("absolute path cannot contain "
        ".. component");
    goto out;
   }


   if (pathspec[0] != '\0' && !IS_DOT(pathspec))
    error = read_mtree_spec1(fp, 0, pathspec);
   memmove(pathspec, cp, strlen(cp) + 1);
   cp = strchr(pathspec, '/');
  } while (!error && cp != ((void*)0));


  if (!error && (IS_DOT(pathspec) || IS_DOTDOT(pathspec))) {
   mtree_error("absolute path cannot contain . or .. "
       "components");
   goto out;
  }
 }


 if (!error && pathspec[0] != '\0')
  error = read_mtree_spec1(fp, 1, pathspec);

 out:
 skip_to(fp, "\n");
 (void)getc(fp);
 return (error);
}
