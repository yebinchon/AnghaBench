
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ buffer; } ;
typedef TYPE_1__ regex_t ;
typedef int reg_syntax_t ;
typedef scalar_t__ reg_errcode_t ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_2__ re_token_t ;
typedef int re_string_t ;
typedef int re_dfa_t ;
typedef int bin_tree_t ;


 scalar_t__ BE (int,int ) ;
 int CONCAT ;
 scalar_t__ END_OF_RE ;
 scalar_t__ OP_ALT ;
 scalar_t__ OP_CLOSE_SUBEXP ;
 scalar_t__ REG_ESPACE ;
 scalar_t__ REG_NOERROR ;
 int * create_tree (int *,int *,int *,int ) ;
 int * parse_expression (int *,TYPE_1__*,TYPE_2__*,int ,int,scalar_t__*) ;

__attribute__((used)) static bin_tree_t *
parse_branch (re_string_t *regexp, regex_t *preg, re_token_t *token,
       reg_syntax_t syntax, int nest, reg_errcode_t *err)
{
  bin_tree_t *tree, *exp;
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  tree = parse_expression (regexp, preg, token, syntax, nest, err);
  if (BE (*err != REG_NOERROR && tree == ((void*)0), 0))
    return ((void*)0);

  while (token->type != OP_ALT && token->type != END_OF_RE
  && (nest == 0 || token->type != OP_CLOSE_SUBEXP))
    {
      exp = parse_expression (regexp, preg, token, syntax, nest, err);
      if (BE (*err != REG_NOERROR && exp == ((void*)0), 0))
 {
   return ((void*)0);
 }
      if (tree != ((void*)0) && exp != ((void*)0))
 {
   tree = create_tree (dfa, tree, exp, CONCAT);
   if (tree == ((void*)0))
     {
       *err = REG_ESPACE;
       return ((void*)0);
     }
 }
      else if (tree == ((void*)0))
 tree = exp;

    }
  return tree;
}
