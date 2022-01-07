
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int errx (int ,char*) ;
 int fclose (int *) ;
 int * fgets (char*,size_t,int *) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int check_for_user(FILE *fp,const char *name)
{
    char *buffer;
    size_t len;
    int found = 0;

    len = strlen(name);
    if ((buffer = malloc(len+2)) == ((void*)0))
 errx(EXIT_FAILURE, "virtual memory exhausted");

    while(fgets(buffer, len+2, fp) != ((void*)0))
    {
 if ((strncmp(name, buffer, len) == 0) &&
     (buffer[len] == '\n'))
 {
     found = 1;
     break;
 }
    }
    fclose(fp);
    free(buffer);
    return found;
}
