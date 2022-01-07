
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {char const* name; } ;


 int TAILQ_INSERT_TAIL (int *,struct section*,int ) ;
 int bzero (struct section*,int) ;
 int link ;
 struct section* malloc (int) ;
 int sh ;

void
section_add (const char *s)
{
 struct section *sec;

 sec = malloc(sizeof(struct section));
 bzero(sec, sizeof(struct section));
 sec->name = s;
 TAILQ_INSERT_TAIL(&sh, sec, link);

 return;
}
