
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int add_typename (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 size_t strcspn (char*,char*) ;

void
add_typedefs_from_file(const char *str)
{
    FILE *file;
    char line[BUFSIZ];

    if ((file = fopen(str, "r")) == ((void*)0)) {
 fprintf(stderr, "indent: cannot open file %s\n", str);
 exit(1);
    }
    while ((fgets(line, BUFSIZ, file)) != ((void*)0)) {

 line[strcspn(line, " \t\n\r")] = '\0';
 add_typename(line);
    }
    fclose(file);
}
