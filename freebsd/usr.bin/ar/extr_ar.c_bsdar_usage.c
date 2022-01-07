
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
bsdar_usage(void)
{

 (void)fprintf(stderr, "usage:  ar -d [-Tjsvz] archive file ...\n");
 (void)fprintf(stderr, "\tar -m [-Tjsvz] archive file ...\n");
 (void)fprintf(stderr, "\tar -m [-Tabijsvz] position archive file ...\n");
 (void)fprintf(stderr, "\tar -p [-Tv] archive [file ...]\n");
 (void)fprintf(stderr, "\tar -q [-TcDjsUvz] archive file ...\n");
 (void)fprintf(stderr, "\tar -r [-TcDjsUuvz] archive file ...\n");
 (void)fprintf(stderr, "\tar -r [-TabcDijsUuvz] position archive file ...\n");
 (void)fprintf(stderr, "\tar -s [-jz] archive\n");
 (void)fprintf(stderr, "\tar -t [-Tv] archive [file ...]\n");
 (void)fprintf(stderr, "\tar -x [-CTouv] archive [file ...]\n");
 (void)fprintf(stderr, "\tar -V\n");
 exit(EX_USAGE);
}
