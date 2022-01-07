
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
typedef int FILE ;


 int add_to_keep_list (char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int perror (char*) ;
 int strlen (char*) ;
 int usage () ;

void
add_file_to_keep_list(char *filename)
{
    FILE *keepf;
    char symbol[1024];
    int len;

    if((keepf = fopen(filename, "r")) == ((void*)0)) {
 perror(filename);
 usage();
    }

    while(fgets(symbol, sizeof(symbol), keepf)) {
 len = strlen(symbol);
 if(len && symbol[len-1] == '\n')
     symbol[len-1] = '\0';

 add_to_keep_list(symbol);
    }
    fclose(keepf);
}
