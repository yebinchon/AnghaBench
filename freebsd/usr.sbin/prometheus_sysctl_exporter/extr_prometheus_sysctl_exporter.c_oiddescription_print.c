
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oiddescription {char* description; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void
oiddescription_print(const struct oiddescription *od, FILE *fp)
{

 fprintf(fp, "%s", od->description);
}
