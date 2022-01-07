
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {int srcline; } ;


 int EX_SOFTWARE ;
 int STAILQ_INSERT_TAIL (int *,struct instruction*,int ) ;
 int links ;
 scalar_t__ malloc (int) ;
 int memset (struct instruction*,int ,int) ;
 int seq_program ;
 int stop (char*,int ) ;
 int yylineno ;

struct instruction *
seq_alloc(void)
{
 struct instruction *new_instr;

 new_instr = (struct instruction *)malloc(sizeof(struct instruction));
 if (new_instr == ((void*)0))
  stop("Unable to malloc instruction object", EX_SOFTWARE);
 memset(new_instr, 0, sizeof(*new_instr));
 STAILQ_INSERT_TAIL(&seq_program, new_instr, links);
 new_instr->srcline = yylineno;
 return new_instr;
}
