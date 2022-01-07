
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_token {struct au_token* data; scalar_t__ len; scalar_t__ used; struct au_token* t_data; int token_q; } ;
struct au_record {struct au_record* data; scalar_t__ len; scalar_t__ used; struct au_record* t_data; int token_q; } ;


 int M_AUDITBSM ;
 struct au_token* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct au_token*,int ) ;
 int free (struct au_token*,int ) ;
 int tokens ;

void
kau_free(struct au_record *rec)
{
 struct au_token *tok;


 while ((tok = TAILQ_FIRST(&rec->token_q))) {
  TAILQ_REMOVE(&rec->token_q, tok, tokens);
  free(tok->t_data, M_AUDITBSM);
  free(tok, M_AUDITBSM);
 }

 rec->used = 0;
 rec->len = 0;
 free(rec->data, M_AUDITBSM);
 free(rec, M_AUDITBSM);
}
