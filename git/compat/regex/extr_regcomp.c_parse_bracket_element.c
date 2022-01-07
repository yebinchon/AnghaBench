
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int reg_syntax_t ;
typedef int reg_errcode_t ;
struct TYPE_11__ {int c; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ opr; } ;
typedef TYPE_3__ re_token_t ;
typedef int re_string_t ;
typedef int re_dfa_t ;
struct TYPE_10__ {int ch; int wch; } ;
struct TYPE_13__ {TYPE_1__ opr; int type; } ;
typedef TYPE_4__ bracket_elem_t ;


 scalar_t__ BE (int,int ) ;
 int MB_CHAR ;
 scalar_t__ OP_CHARSET_RANGE ;
 scalar_t__ OP_CLOSE_BRACKET ;
 scalar_t__ OP_OPEN_CHAR_CLASS ;
 scalar_t__ OP_OPEN_COLL_ELEM ;
 scalar_t__ OP_OPEN_EQUIV_CLASS ;
 int REG_ERANGE ;
 int REG_NOERROR ;
 int SB_CHAR ;
 int parse_bracket_symbol (TYPE_4__*,int *,TYPE_3__*) ;
 int peek_token_bracket (TYPE_3__*,int *,int ) ;
 int re_string_char_size_at (int *,int ) ;
 int re_string_cur_idx (int *) ;
 int re_string_skip_bytes (int *,int) ;
 int re_string_wchar_at (int *,int ) ;

__attribute__((used)) static reg_errcode_t
parse_bracket_element (bracket_elem_t *elem, re_string_t *regexp,
         re_token_t *token, int token_len, re_dfa_t *dfa,
         reg_syntax_t syntax, int accept_hyphen)
{
  re_string_skip_bytes (regexp, token_len);
  if (token->type == OP_OPEN_COLL_ELEM || token->type == OP_OPEN_CHAR_CLASS
      || token->type == OP_OPEN_EQUIV_CLASS)
    return parse_bracket_symbol (elem, regexp, token);
  if (BE (token->type == OP_CHARSET_RANGE, 0) && !accept_hyphen)
    {


      re_token_t token2;
      (void) peek_token_bracket (&token2, regexp, syntax);
      if (token2.type != OP_CLOSE_BRACKET)


 return REG_ERANGE;
    }
  elem->type = SB_CHAR;
  elem->opr.ch = token->opr.c;
  return REG_NOERROR;
}
