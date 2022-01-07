
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int newword ;
typedef int FILE ;


 int SEEK_SET ;
 int ** calloc (size_t,int) ;
 int err (int,char*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fseek (int *,int ,int ) ;
 size_t nrandwords ;
 int ** randwords ;
 size_t strcspn (char*,char*) ;
 int * strdup (char*) ;

int
dowordfile(const char *fname)
{
 FILE *fp;
 char newword[64];
 size_t n;

 fp = fopen(fname, "r");
 if (fp == ((void*)0))
  return (-1);
 nrandwords = 0;
 while (fgets(newword, sizeof(newword), fp) != ((void*)0))
  nrandwords++;
 if (ferror(fp) || fseek(fp, 0, SEEK_SET) != 0)
  goto fail;
 randwords = calloc(nrandwords, sizeof(char *));
 if (randwords == ((void*)0))
  goto fail;
 n = nrandwords;
 nrandwords = 0;
 while (fgets(newword, sizeof(newword), fp) != ((void*)0)) {
  newword[strcspn(newword, "\r\n")] = '\0';
  randwords[nrandwords] = strdup(newword);
  if (randwords[nrandwords] == ((void*)0))
   err(1, "reading words file");
  if (++nrandwords == n)
   break;
 }
 nrandwords = n;
 fclose(fp);
 return (0);
fail:
 fclose(fp);
 return (-1);
}
