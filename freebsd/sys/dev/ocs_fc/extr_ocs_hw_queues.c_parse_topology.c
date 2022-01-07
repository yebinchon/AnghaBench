
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int iter_idx; int inuse_count; TYPE_2__* tokens; } ;
typedef TYPE_1__ tokarray_t ;
struct TYPE_11__ {int type; char* string; int subtype; } ;
typedef TYPE_2__ tok_t ;
typedef int ocs_hw_t ;
struct TYPE_12__ {int inuse_count; scalar_t__ alloc_count; int rptcount_idx; int* rptcount; int * entry_counts; TYPE_4__* entries; } ;
typedef TYPE_3__ ocs_hw_qtop_t ;
struct TYPE_13__ {size_t entry; unsigned int len; unsigned int class; unsigned int ulp; int filter_mask; int set_default; } ;
typedef TYPE_4__ ocs_hw_qtop_entry_t ;
typedef int int32_t ;


 int ARRAY_SIZE (int*) ;
 int FALSE ;

 int TOK_COLON ;
 int TOK_EQUALS ;
 int TOK_LPAREN ;

 int TOK_NUMBER_LIST ;







 int TRUE ;
 char* ocs_strchr (char*,char) ;
 int ocs_strtoul (char*,int ,int ) ;
 void* subtype2qtop (int ) ;
 unsigned int tok_getnumber (int *,TYPE_3__*,TYPE_2__*) ;
 int tok_syntax (int *,TYPE_1__*) ;

__attribute__((used)) static int32_t
parse_topology(ocs_hw_t *hw, tokarray_t *tokarray, ocs_hw_qtop_t *qtop)
{
 ocs_hw_qtop_entry_t *qt = qtop->entries + qtop->inuse_count;
 tok_t *tok;

 for (; (tokarray->iter_idx < tokarray->inuse_count) &&
      ((tok = &tokarray->tokens[tokarray->iter_idx]) != ((void*)0)); ) {
  if (qtop->inuse_count >= qtop->alloc_count) {
   return -1;
  }

  qt = qtop->entries + qtop->inuse_count;

  switch (tok[0].type)
  {
  case 133:
   qt->entry = subtype2qtop(tok[0].subtype);
   qt->set_default = FALSE;
   qt->len = 0;
   qt->class = 0;
   qtop->inuse_count++;

   tokarray->iter_idx++;


   while ((tokarray->iter_idx + 4) <= tokarray->inuse_count) {
    tok = &tokarray->tokens[tokarray->iter_idx];
    if( (tok[0].type == TOK_COLON) &&
     (tok[1].type == 136) &&
     (tok[2].type == TOK_EQUALS) &&
     ((tok[3].type == 135) ||
      (tok[3].type == 134) ||
      (tok[3].type == TOK_NUMBER_LIST))) {

     switch (tok[1].subtype) {
     case 129:
      qt->len = tok_getnumber(hw, qtop, &tok[3]);
      break;

     case 131:
      qt->class = tok_getnumber(hw, qtop, &tok[3]);
      break;

     case 128:
      qt->ulp = tok_getnumber(hw, qtop, &tok[3]);
      break;

     case 130:
      if (tok[3].type == TOK_NUMBER_LIST) {
       uint32_t mask = 0;
       char *p = tok[3].string;

       while ((p != ((void*)0)) && *p) {
        uint32_t v;

        v = ocs_strtoul(p, 0, 0);
        if (v < 32) {
         mask |= (1U << v);
        }

        p = ocs_strchr(p, ',');
        if (p != ((void*)0)) {
         p++;
        }
       }
       qt->filter_mask = mask;
      } else {
       qt->filter_mask = (1U << tok_getnumber(hw, qtop, &tok[3]));
      }
      break;
     default:
      break;
     }

     tokarray->iter_idx += 4;
    } else {
     break;
    }
   }
   qtop->entry_counts[qt->entry]++;
   break;

  case 136:
   if ( ((tokarray->iter_idx + 5) <= tokarray->inuse_count) &&
    (tok[1].type == TOK_COLON) &&
    (tok[2].type == 133) &&
    (tok[3].type == TOK_EQUALS) &&
    ((tok[4].type == 135) || (tok[4].type == 134))) {
    qt->entry = subtype2qtop(tok[2].subtype);
    qt->set_default = TRUE;
    switch(tok[0].subtype) {
    case 129:
     qt->len = tok_getnumber(hw, qtop, &tok[4]);
     break;
    case 131:
     qt->class = tok_getnumber(hw, qtop, &tok[4]);
     break;
    case 128:
     qt->ulp = tok_getnumber(hw, qtop, &tok[4]);
     break;
    default:
     break;
    }
    qtop->inuse_count++;
    tokarray->iter_idx += 5;
   } else {
    tok_syntax(hw, tokarray);
    return -1;
   }
   break;

  case 135:
  case 134: {
   uint32_t rpt_count = 1;
   uint32_t i;

   rpt_count = tok_getnumber(hw, qtop, tok);

   if (tok[1].type == TOK_LPAREN) {
    uint32_t iter_idx_save;

    tokarray->iter_idx += 2;


    iter_idx_save = tokarray->iter_idx;

    for (i = 0; i < rpt_count; i++) {
     uint32_t rptcount_idx = qtop->rptcount_idx;

     if (qtop->rptcount_idx < ARRAY_SIZE(qtop->rptcount)) {
      qtop->rptcount[qtop->rptcount_idx++] = i;
     }


     tokarray->iter_idx = iter_idx_save;


     parse_topology(hw, tokarray, qtop);

     qtop->rptcount_idx = rptcount_idx;
    }
   }
   break;
  }

  case 132:
   tokarray->iter_idx++;
   return 0;

  default:
   tok_syntax(hw, tokarray);
   return -1;
  }
 }
 return 0;
}
