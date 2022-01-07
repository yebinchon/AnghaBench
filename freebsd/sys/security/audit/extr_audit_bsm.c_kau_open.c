
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_record {int used; scalar_t__ len; int token_q; int * data; } ;


 int M_AUDITBSM ;
 int M_WAITOK ;
 int TAILQ_INIT (int *) ;
 struct au_record* malloc (int,int ,int ) ;

__attribute__((used)) static struct au_record *
kau_open(void)
{
 struct au_record *rec;

 rec = malloc(sizeof(*rec), M_AUDITBSM, M_WAITOK);
 rec->data = ((void*)0);
 TAILQ_INIT(&rec->token_q);
 rec->len = 0;
 rec->used = 1;

 return (rec);
}
