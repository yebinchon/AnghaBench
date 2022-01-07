
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resp ;


 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int rpmatch (char*) ;
 int stderr ;
 int stdin ;
 char* strchr (char*,char) ;

int
queryuser(char *argv[])
{
 char *p, resp[256];

 (void)fprintf(stderr, "\"%s", *argv);
 while (*++argv)
  (void)fprintf(stderr, " %s", *argv);
 (void)fprintf(stderr, "\"? ");
 (void)fflush(stderr);

 if (fgets(resp, sizeof(resp), stdin) == ((void*)0))
  *resp = '\0';
 if ((p = strchr(resp, '\n')) != ((void*)0))
  *p = '\0';
 else {
  (void)fprintf(stderr, "\n");
  (void)fflush(stderr);
 }
        return (rpmatch(resp) == 1);
}
