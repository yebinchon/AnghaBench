
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int clearerr (int ) ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getdelim (char**,size_t*,char,int ) ;
 int n_opt ;
 int o_opt ;
 int printf (char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int unlink (char*) ;

__attribute__((used)) static int
handle_existing_file(char **path)
{
 size_t alen;
 ssize_t len;
 char buf[4];

 for (;;) {
  fprintf(stderr,
      "replace %s? [y]es, [n]o, [A]ll, [N]one, [r]ename: ",
      *path);
  if (fgets(buf, sizeof(buf), stdin) == ((void*)0)) {
   clearerr(stdin);
   printf("NULL\n(EOF or read error, "
       "treating as \"[N]one\"...)\n");
   n_opt = 1;
   return -1;
  }
  switch (*buf) {
  case 'A':
   o_opt = 1;

  case 'y':
  case 'Y':
   (void)unlink(*path);
   return 1;
  case 'N':
   n_opt = 1;

  case 'n':
   return -1;
  case 'r':
  case 'R':
   printf("New name: ");
   fflush(stdout);
   free(*path);
   *path = ((void*)0);
   alen = 0;
   len = getdelim(path, &alen, '\n', stdin);
   if ((*path)[len - 1] == '\n')
    (*path)[len - 1] = '\0';
   return 0;
  default:
   break;
  }
 }
}
