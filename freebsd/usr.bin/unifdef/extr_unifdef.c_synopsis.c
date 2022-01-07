
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void
synopsis(FILE *fp)
{
 fprintf(fp,
     "usage:	unifdef [-bBcdehKkmnsStV] [-x{012}] [-Mext] [-opath] \\\n"
     "		[-[i]Dsym[=val]] [-[i]Usym] [-fpath] ... [file] ...\n");
}
