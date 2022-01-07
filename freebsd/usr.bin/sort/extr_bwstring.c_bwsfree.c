
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwstring {int dummy; } ;


 int sort_free (struct bwstring const*) ;

void
bwsfree(const struct bwstring *s)
{

 if (s)
  sort_free(s);
}
