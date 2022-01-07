
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int unregister_file (int *) ;

int
Fclose(FILE *fp)
{

 unregister_file(fp);
 return (fclose(fp));
}
