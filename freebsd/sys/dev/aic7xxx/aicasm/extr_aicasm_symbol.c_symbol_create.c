
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int * name; } ;
typedef TYPE_1__ symbol_t ;


 int EX_SOFTWARE ;
 int UNINITIALIZED ;
 int exit (int ) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int perror (char*) ;
 int stop (char*,int ) ;
 int * strdup (char const*) ;

__attribute__((used)) static symbol_t *
symbol_create(const char *name)
{
 symbol_t *new_symbol;

 new_symbol = (symbol_t *)malloc(sizeof(symbol_t));
 if (new_symbol == ((void*)0)) {
  perror("Unable to create new symbol");
  exit(EX_SOFTWARE);
 }
 memset(new_symbol, 0, sizeof(*new_symbol));
 new_symbol->name = strdup(name);
 if (new_symbol->name == ((void*)0))
   stop("Unable to strdup symbol name", EX_SOFTWARE);
 new_symbol->type = UNINITIALIZED;
 return (new_symbol);
}
