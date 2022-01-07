
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {size_t serial; int value; } ;


 int free (int*) ;
 int* xcalloc (int,int) ;

__attribute__((used)) static void
unsort(struct line *f, int l, int *b)
{
 int *a, i;

 a = xcalloc(l + 1, sizeof(*a));
 for (i = 1; i <= l; i++)
  a[f[i].serial] = f[i].value;
 for (i = 1; i <= l; i++)
  b[i] = a[i];
 free(a);
}
