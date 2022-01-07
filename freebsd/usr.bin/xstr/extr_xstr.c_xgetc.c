
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int getc (int *) ;
 int tellpt ;

__attribute__((used)) static int
xgetc(FILE *file)
{

 tellpt++;
 return (getc(file));
}
