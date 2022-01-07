
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int allow_rerere_auto ;
 int append_conflicts_hint (int *,struct strbuf*,int ) ;
 int cleanup_arg ;
 int fclose (int *) ;
 int fputs (int ,int *) ;
 int get_cleanup_mode (int ,int) ;
 char* git_path_merge_msg (int ) ;
 int printf (char*) ;
 int repo_rerere (int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int the_index ;
 int the_repository ;
 int * xfopen (char const*,char*) ;

__attribute__((used)) static int suggest_conflicts(void)
{
 const char *filename;
 FILE *fp;
 struct strbuf msgbuf = STRBUF_INIT;

 filename = git_path_merge_msg(the_repository);
 fp = xfopen(filename, "a");
 append_conflicts_hint(&the_index, &msgbuf,
         get_cleanup_mode(cleanup_arg, 1));
 fputs(msgbuf.buf, fp);
 strbuf_release(&msgbuf);
 fclose(fp);
 repo_rerere(the_repository, allow_rerere_auto);
 printf(_("Automatic merge failed; "
   "fix conflicts and then commit the result.\n"));
 return 1;
}
