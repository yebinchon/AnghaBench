
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; long* gr_mem; scalar_t__ gr_gid; } ;


 int EXIT_SUCCESS ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* gr_make (struct group*) ;
 int printf (char*,char*,...) ;
 int stdout ;

__attribute__((used)) static int
print_group(struct group * grp, bool pretty)
{
 char *buf = ((void*)0);
 int i;

 if (pretty) {
  printf("Group Name: %-15s   #%lu\n"
         "   Members: ",
         grp->gr_name, (long) grp->gr_gid);
  if (grp->gr_mem != ((void*)0)) {
   for (i = 0; grp->gr_mem[i]; i++)
    printf("%s%s", i ? "," : "", grp->gr_mem[i]);
  }
  fputs("\n\n", stdout);
  return (EXIT_SUCCESS);
 }

 buf = gr_make(grp);
 printf("%s\n", buf);
 free(buf);
 return (EXIT_SUCCESS);
}
