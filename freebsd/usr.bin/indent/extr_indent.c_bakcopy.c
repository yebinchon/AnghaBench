
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 char const* bakfile ;
 int close (int) ;
 int creat (char const*,int) ;
 int err (int,char*,char const*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 void* fopen (char const*,char*) ;
 char const* in_name ;
 int * input ;
 int * output ;
 int read (int ,char*,int) ;
 int simple_backup_suffix ;
 int sprintf (char const*,char*,char const*,int ) ;
 int unlink (char const*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
bakcopy(void)
{
    int n,
                bakchn;
    char buff[8 * 1024];
    const char *p;


    for (p = in_name; *p; p++);
    while (p > in_name && *p != '/')
 p--;
    if (*p == '/')
 p++;
    sprintf(bakfile, "%s%s", p, simple_backup_suffix);


    bakchn = creat(bakfile, 0600);
    if (bakchn < 0)
 err(1, "%s", bakfile);
    while ((n = read(fileno(input), buff, sizeof(buff))) > 0)
 if (write(bakchn, buff, n) != n)
     err(1, "%s", bakfile);
    if (n < 0)
 err(1, "%s", in_name);
    close(bakchn);
    fclose(input);


    input = fopen(bakfile, "r");
    if (input == ((void*)0))
 err(1, "%s", bakfile);

    output = fopen(in_name, "w");
    if (output == ((void*)0)) {
 unlink(bakfile);
 err(1, "%s", in_name);
    }
}
