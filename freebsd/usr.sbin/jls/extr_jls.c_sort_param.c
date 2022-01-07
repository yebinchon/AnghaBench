
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {int jp_name; } ;


 char* strchr (int ,char) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
sort_param(const void *a, const void *b)
{
 const struct jailparam *parama, *paramb;
 char *ap, *bp;


 parama = a;
 paramb = b;
 ap = strchr(parama->jp_name, '.');
 bp = strchr(paramb->jp_name, '.');
 if (ap && !bp)
  return (1);
 if (bp && !ap)
  return (-1);
 return (strcmp(parama->jp_name, paramb->jp_name));
}
