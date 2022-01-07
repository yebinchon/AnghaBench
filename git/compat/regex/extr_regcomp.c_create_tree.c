
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int re_token_type_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ re_token_t ;
typedef int re_dfa_t ;
typedef int bin_tree_t ;


 int * create_token_tree (int *,int *,int *,TYPE_1__*) ;

__attribute__((used)) static bin_tree_t *
create_tree (re_dfa_t *dfa, bin_tree_t *left, bin_tree_t *right,
      re_token_type_t type)
{
  re_token_t t;
  t.type = type;
  return create_token_tree (dfa, left, right, &t);
}
