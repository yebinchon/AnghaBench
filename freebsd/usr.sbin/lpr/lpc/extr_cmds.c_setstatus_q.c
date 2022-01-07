
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct printer {char* printer; } ;


 int LFM_PRINT_DIS ;
 int MAXPATHLEN ;
 int generic_msg ;
 int lock_file_name (struct printer*,char*,int) ;
 int printf (char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int upstat (struct printer*,int ,int) ;

void
setstatus_q(struct printer *pp)
{
 struct stat stbuf;
 int not_shown;
 char lf[MAXPATHLEN];

 lock_file_name(pp, lf, sizeof lf);
 printf("%s:\n", pp->printer);

 upstat(pp, generic_msg, 1);






 not_shown = 1;
 if (stat(lf, &stbuf) >= 0) {
  if (stbuf.st_mode & LFM_PRINT_DIS)
   not_shown = 0;
 }
 if (not_shown) {
  printf("\tnote: This queue currently has printing enabled,\n");
  printf("\t    so this -msg will only be shown by 'lpq' if\n");
  printf("\t    a job is actively printing on it.\n");
 }
}
