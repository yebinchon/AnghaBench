
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 int error_errno (int ,char const*) ;
 int fclose (int *) ;
 int * fopen_for_writing (char const*) ;
 char* git_path_fetch_head (int ) ;
 int the_repository ;

__attribute__((used)) static int truncate_fetch_head(void)
{
 const char *filename = git_path_fetch_head(the_repository);
 FILE *fp = fopen_for_writing(filename);

 if (!fp)
  return error_errno(_("cannot open %s"), filename);
 fclose(fp);
 return 0;
}
