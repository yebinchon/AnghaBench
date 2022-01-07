
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_token {scalar_t__ len; } ;
struct au_record {int len; int token_q; } ;


 int KASSERT (int ,char*) ;
 int TAILQ_INSERT_TAIL (int *,struct au_token*,int ) ;
 int tokens ;

__attribute__((used)) static void
kau_write(struct au_record *rec, struct au_token *tok)
{

 KASSERT(tok != ((void*)0), ("kau_write: tok == NULL"));

 TAILQ_INSERT_TAIL(&rec->token_q, tok, tokens);
 rec->len += tok->len;
}
