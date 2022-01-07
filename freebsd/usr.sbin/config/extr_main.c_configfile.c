
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int KERNCONFTAG ;
 int PREFIX ;
 int SBUF_AUTOEXTEND ;
 int assert (int ) ;
 int cfgfile_add (int ) ;
 int cfgfile_removeall () ;
 int configfile_dynamic (struct sbuf*) ;
 int configfile_filebased (struct sbuf*) ;
 int err (int,char*,char*) ;
 int errx (int ,char*) ;
 int fclose (int *) ;
 scalar_t__ filebased ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 char* kernconfstr ;
 int moveifchanged (char*,char*) ;
 char* path (char*) ;
 int sbuf_clear (struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int,int ) ;
 int strlen (int ) ;
 char* strstr (char*,int ) ;

__attribute__((used)) static void
configfile(void)
{
 FILE *fo;
 struct sbuf *sb;
 char *p;


 cfgfile_add(PREFIX);
 p = path("config.c.new");
 fo = fopen(p, "w");
 if (!fo)
  err(2, "%s", p);
 sb = sbuf_new(((void*)0), ((void*)0), 2048, SBUF_AUTOEXTEND);
 assert(sb != ((void*)0));
 sbuf_clear(sb);
 if (filebased) {

  configfile_filebased(sb);
 } else {
  configfile_dynamic(sb);
 }
 sbuf_finish(sb);





 p = strstr(kernconfstr, KERNCONFTAG);
 if (p == ((void*)0))
  errx(EXIT_FAILURE, "Something went terribly wrong!");
 *p = '\0';
 fprintf(fo, "%s", kernconfstr);
 fprintf(fo, "%s", sbuf_data(sb));
 p += strlen(KERNCONFTAG);
 fprintf(fo, "%s", p);
 sbuf_delete(sb);
 fclose(fo);
 moveifchanged(path("config.c.new"), path("config.c"));
 cfgfile_removeall();
}
