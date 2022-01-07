
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assign {void** vals; void* key; int section; } ;


 int TAILQ_INSERT_TAIL (int *,struct assign*,int ) ;
 int TAILQ_LAST (int *,int ) ;
 int ah ;
 int bzero (struct assign*,int) ;
 int clear_words () ;
 int idx ;
 int link ;
 struct assign* malloc (int) ;
 int section_head ;
 int sh ;
 void* sstrdup (char const*) ;
 char const** words ;

void
assign_add (const char *a)
{
 struct assign *assign;
 int i;

 assign = malloc(sizeof(struct assign));
 bzero(assign, sizeof(struct assign));
 assign->section = TAILQ_LAST(&sh, section_head);
 assign->key = sstrdup(a);
 for (i = 0; i < idx; i++)
  assign->vals[(idx - 1) - i] = sstrdup(words[i]);
 TAILQ_INSERT_TAIL(&ah, assign, link);

 clear_words();
 return;
}
