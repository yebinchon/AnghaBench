
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd ;
typedef int FILE ;


 int getc (int *) ;
 int mtree_global ;
 int read_mtree_keywords (int *,int *) ;
 int read_word (int *,char*,int) ;
 int skip_to (int *,char*) ;

__attribute__((used)) static int
read_mtree_command(FILE *fp)
{
 char cmd[10];
 int error;

 error = read_word(fp, cmd, sizeof(cmd));
 if (error)
  goto out;

 error = read_mtree_keywords(fp, &mtree_global);

 out:
 skip_to(fp, "\n");
 (void)getc(fp);
 return (error);
}
