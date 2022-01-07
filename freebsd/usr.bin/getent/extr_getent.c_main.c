
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getentdb {int (* callback ) (int,char**) ;int * name; } ;


 int RV_USAGE ;
 struct getentdb* databases ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int setprogname (char*) ;
 int stderr ;
 scalar_t__ strcmp (int *,char*) ;
 int stub1 (int,char**) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct getentdb *curdb;

 setprogname(argv[0]);

 if (argc < 2)
  usage();
 for (curdb = databases; curdb->name != ((void*)0); curdb++) {
  if (strcmp(curdb->name, argv[1]) == 0) {
   exit(curdb->callback(argc, argv));
  }
 }
 fprintf(stderr, "Unknown database: %s\n", argv[1]);
 usage();

 return RV_USAGE;
}
