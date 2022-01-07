
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int fprintf (int *,char*,char*) ;
 scalar_t__ preprocess (char*,char*) ;

__attribute__((used)) static void
process_into_file(char *line, FILE *ofp)
{
 char result[BUFSIZ];

 if (preprocess(line, result))
  fprintf(ofp, "\"%s\\0\"\n", result);
}
