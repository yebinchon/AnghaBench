
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name2 ;
typedef int name1 ;


 scalar_t__ EEXIST ;
 int EXIT_FAILURE ;
 char* MD_NAME ;
 scalar_t__ errno ;
 int errx (int ,char*,char*) ;
 int kldload (char*) ;
 int modfind (char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
mdmaybeload(void)
{
 char name1[64], name2[64];

 snprintf(name1, sizeof(name1), "g_%s", MD_NAME);
 snprintf(name2, sizeof(name2), "geom_%s", MD_NAME);
 if (modfind(name1) == -1) {

  if (kldload(name2) == -1 || modfind(name1) == -1) {
   if (errno != EEXIST) {
    errx(EXIT_FAILURE,
        "%s module not available!", name2);
   }
  }
 }
}
