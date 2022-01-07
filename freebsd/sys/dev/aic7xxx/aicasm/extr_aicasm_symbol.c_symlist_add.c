
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int symlist_t ;
struct TYPE_15__ {TYPE_2__* rinfo; TYPE_1__* finfo; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_3__ info; } ;
typedef TYPE_4__ symbol_t ;
struct TYPE_17__ {TYPE_4__* symbol; } ;
typedef TYPE_5__ symbol_node_t ;
struct TYPE_14__ {scalar_t__ address; } ;
struct TYPE_13__ {scalar_t__ value; } ;




 int EX_SOFTWARE ;
 int FALSE ;




 TYPE_5__* SLIST_FIRST (int *) ;
 int SLIST_INSERT_AFTER (TYPE_5__*,TYPE_5__*,int ) ;
 int SLIST_INSERT_HEAD (int *,TYPE_5__*,int ) ;
 TYPE_5__* SLIST_NEXT (TYPE_5__*,int ) ;

 int SYMLIST_SORT ;
 int TRUE ;
 int links ;
 scalar_t__ malloc (int) ;
 int stop (char*,int ) ;

void
symlist_add(symlist_t *symlist, symbol_t *symbol, int how)
{
 symbol_node_t *newnode;

 newnode = (symbol_node_t *)malloc(sizeof(symbol_node_t));
 if (newnode == ((void*)0)) {
  stop("symlist_add: Unable to malloc symbol_node", EX_SOFTWARE);

 }
 newnode->symbol = symbol;
 if (how == SYMLIST_SORT) {
  symbol_node_t *curnode;
  int field;

  field = FALSE;
  switch(symbol->type) {
  case 130:
  case 129:
  case 128:
   break;
  case 132:
  case 131:
  case 134:
  case 133:
   field = TRUE;
   break;
  default:
   stop("symlist_add: Invalid symbol type for sorting",
        EX_SOFTWARE);

  }

  curnode = SLIST_FIRST(symlist);
  if (curnode == ((void*)0)
   || (field
    && (curnode->symbol->type > newnode->symbol->type
     || (curnode->symbol->type == newnode->symbol->type
      && (curnode->symbol->info.finfo->value >
   newnode->symbol->info.finfo->value))))
   || (!field && (curnode->symbol->info.rinfo->address >
                 newnode->symbol->info.rinfo->address))) {
   SLIST_INSERT_HEAD(symlist, newnode, links);
   return;
  }

  while (1) {
   if (SLIST_NEXT(curnode, links) == ((void*)0)) {
    SLIST_INSERT_AFTER(curnode, newnode,
         links);
    break;
   } else {
    symbol_t *cursymbol;

    cursymbol = SLIST_NEXT(curnode, links)->symbol;
    if ((field
        && (cursymbol->type > symbol->type
       || (cursymbol->type == symbol->type
        && (cursymbol->info.finfo->value >
     symbol->info.finfo->value))))
     || (!field
       && (cursymbol->info.rinfo->address >
           symbol->info.rinfo->address))) {
     SLIST_INSERT_AFTER(curnode, newnode,
          links);
     break;
    }
   }
   curnode = SLIST_NEXT(curnode, links);
  }
 } else {
  SLIST_INSERT_HEAD(symlist, newnode, links);
 }
}
