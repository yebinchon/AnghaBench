
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ no_sub; scalar_t__ buffer; } ;
typedef TYPE_3__ regex_t ;
typedef int reg_errcode_t ;
struct TYPE_16__ {int used_bkref_map; } ;
typedef TYPE_4__ re_dfa_t ;
typedef int bitset_word_t ;
struct TYPE_13__ {int idx; } ;
struct TYPE_14__ {int opt_subexp; TYPE_1__ opr; } ;
struct TYPE_17__ {TYPE_2__ token; struct TYPE_17__* left; } ;
typedef TYPE_5__ bin_tree_t ;


 scalar_t__ BE (int,int ) ;
 int BITSET_WORD_BITS ;
 int CONCAT ;
 int OP_CLOSE_SUBEXP ;
 int OP_OPEN_SUBEXP ;
 int REG_ESPACE ;
 TYPE_5__* create_tree (TYPE_4__*,TYPE_5__*,TYPE_5__*,int ) ;

__attribute__((used)) static bin_tree_t *
lower_subexp (reg_errcode_t *err, regex_t *preg, bin_tree_t *node)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  bin_tree_t *body = node->left;
  bin_tree_t *op, *cls, *tree1, *tree;

  if (preg->no_sub




      && node->left != ((void*)0)
      && (node->token.opr.idx >= BITSET_WORD_BITS
   || !(dfa->used_bkref_map
        & ((bitset_word_t) 1 << node->token.opr.idx))))
    return node->left;



  op = create_tree (dfa, ((void*)0), ((void*)0), OP_OPEN_SUBEXP);
  cls = create_tree (dfa, ((void*)0), ((void*)0), OP_CLOSE_SUBEXP);
  tree1 = body ? create_tree (dfa, body, cls, CONCAT) : cls;
  tree = create_tree (dfa, op, tree1, CONCAT);
  if (BE (tree == ((void*)0) || tree1 == ((void*)0) || op == ((void*)0) || cls == ((void*)0), 0))
    {
      *err = REG_ESPACE;
      return ((void*)0);
    }

  op->token.opr.idx = cls->token.opr.idx = node->token.opr.idx;
  op->token.opt_subexp = cls->token.opt_subexp = node->token.opt_subexp;
  return tree;
}
