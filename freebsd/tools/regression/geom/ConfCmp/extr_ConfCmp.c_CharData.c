
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mytree {TYPE_1__* cur; scalar_t__ ignore; } ;
typedef char XML_Char ;
struct TYPE_2__ {int cont; } ;


 scalar_t__ isspace (char const) ;
 int sbuf_bcat (int ,char const*,int) ;

__attribute__((used)) static void
CharData(void *userData , const XML_Char *s , int len)
{
 struct mytree *mt;
 const char *b, *e;

 mt = userData;
 if (mt->ignore)
  return;
 b = s;
 e = s + len - 1;
 while (isspace(*b) && b < e)
  b++;
 while (isspace(*e) && e > b)
  e--;
 if (e != b || *b)
  sbuf_bcat(mt->cur->cont, b, e - b + 1);
}
