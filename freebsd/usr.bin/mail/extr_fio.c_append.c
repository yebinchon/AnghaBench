
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int dummy; } ;
typedef int FILE ;


 int fwrite (char*,int,int,int *) ;

int
append(struct message *mp, FILE *f)
{
 return (fwrite((char *)mp, sizeof(*mp), 1, f) != 1);
}
