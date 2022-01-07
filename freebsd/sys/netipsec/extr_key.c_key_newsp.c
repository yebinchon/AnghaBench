
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;


 int M_IPSEC_SP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SP_INITREF (struct secpolicy*) ;
 struct secpolicy* malloc (int,int ,int) ;

struct secpolicy *
key_newsp(void)
{
 struct secpolicy *sp;

 sp = malloc(sizeof(*sp), M_IPSEC_SP, M_NOWAIT | M_ZERO);
 if (sp != ((void*)0))
  SP_INITREF(sp);
 return (sp);
}
