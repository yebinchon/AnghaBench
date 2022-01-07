
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getentdb {char* name; } ;


 int RV_USAGE ;
 struct getentdb* databases ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static int
usage(void)
{
 struct getentdb *curdb;

 fprintf(stderr, "Usage: %s database [key ...]\n",
     getprogname());
 fprintf(stderr, "       database may be one of:\n\t");
 for (curdb = databases; curdb->name != ((void*)0); curdb++) {
  fprintf(stderr, " %s", curdb->name);
 }
 fprintf(stderr, "\n");
 exit(RV_USAGE);

}
