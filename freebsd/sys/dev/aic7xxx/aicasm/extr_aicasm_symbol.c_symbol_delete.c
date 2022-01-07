
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* linfo; TYPE_2__* cinfo; TYPE_2__* finfo; TYPE_2__* ainfo; TYPE_2__* rinfo; } ;
struct TYPE_11__ {int type; struct TYPE_11__* name; TYPE_1__ info; int symrefs; } ;
typedef TYPE_2__ symbol_t ;
struct TYPE_13__ {int (* del ) (TYPE_4__*,TYPE_3__*,int ) ;} ;
struct TYPE_12__ {int size; TYPE_2__* data; } ;
typedef TYPE_3__ DBT ;
 int free (TYPE_2__*) ;
 int strlen (TYPE_2__*) ;
 int stub1 (TYPE_4__*,TYPE_3__*,int ) ;
 int symlist_free (int *) ;
 TYPE_4__* symtable ;

void
symbol_delete(symbol_t *symbol)
{
 if (symtable != ((void*)0)) {
  DBT key;

  key.data = symbol->name;
  key.size = strlen(symbol->name);
  symtable->del(symtable, &key, 0);
 }
 switch(symbol->type) {
 case 130:
 case 129:
 case 131:
  if (symbol->info.rinfo != ((void*)0))
   free(symbol->info.rinfo);
  break;
 case 139:
  if (symbol->info.ainfo != ((void*)0))
   free(symbol->info.ainfo);
  break;
 case 132:
 case 134:
 case 136:
 case 135:
  if (symbol->info.finfo != ((void*)0)) {
   symlist_free(&symbol->info.finfo->symrefs);
   free(symbol->info.finfo);
  }
  break;
 case 137:
 case 138:
  if (symbol->info.cinfo != ((void*)0))
   free(symbol->info.cinfo);
  break;
 case 133:
  if (symbol->info.linfo != ((void*)0))
   free(symbol->info.linfo);
  break;
 case 128:
 default:
  break;
 }
 free(symbol->name);
 free(symbol);
}
