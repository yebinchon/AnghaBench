
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int reg_errcode_t ;
struct TYPE_7__ {unsigned char c; } ;
struct TYPE_9__ {int type; TYPE_1__ opr; } ;
typedef TYPE_3__ re_token_t ;
typedef int re_string_t ;
struct TYPE_8__ {unsigned char* name; } ;
struct TYPE_10__ {int type; TYPE_2__ opr; } ;
typedef TYPE_4__ bracket_elem_t ;


 int BRACKET_NAME_BUF_SIZE ;
 int CHAR_CLASS ;
 int COLL_SYM ;
 int EQUIV_CLASS ;



 int REG_EBRACK ;
 int REG_NOERROR ;
 scalar_t__ re_string_eoi (int *) ;
 unsigned char re_string_fetch_byte (int *) ;
 unsigned char re_string_fetch_byte_case (int *) ;
 char re_string_peek_byte (int *,int ) ;
 int re_string_skip_bytes (int *,int) ;

__attribute__((used)) static reg_errcode_t
parse_bracket_symbol (bracket_elem_t *elem, re_string_t *regexp,
        re_token_t *token)
{
  unsigned char ch, delim = token->opr.c;
  int i = 0;
  if (re_string_eoi(regexp))
    return REG_EBRACK;
  for (;; ++i)
    {
      if (i >= BRACKET_NAME_BUF_SIZE)
 return REG_EBRACK;
      if (token->type == 130)
 ch = re_string_fetch_byte_case (regexp);
      else
 ch = re_string_fetch_byte (regexp);
      if (re_string_eoi(regexp))
 return REG_EBRACK;
      if (ch == delim && re_string_peek_byte (regexp, 0) == ']')
 break;
      elem->opr.name[i] = ch;
    }
  re_string_skip_bytes (regexp, 1);
  elem->opr.name[i] = '\0';
  switch (token->type)
    {
    case 129:
      elem->type = COLL_SYM;
      break;
    case 128:
      elem->type = EQUIV_CLASS;
      break;
    case 130:
      elem->type = CHAR_CLASS;
      break;
    default:
      break;
    }
  return REG_NOERROR;
}
