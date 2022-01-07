
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int FILE ;


 int DUMP_FORMAT ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,int ,int *,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
load_crom(char *filename, u_int32_t *p)
{
 FILE *file;
 int len=1024, i;

 if ((file = fopen(filename, "r")) == ((void*)0))
   err(1, "load_crom %s", filename);
 for (i = 0; i < len/(4*8); i ++) {
  fscanf(file, DUMP_FORMAT,
   p, p+1, p+2, p+3, p+4, p+5, p+6, p+7);
  p += 8;
 }
 fclose(file);
}
