
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int symbol_t ;
typedef int stored_ptr ;
typedef int new_symbol ;
struct TYPE_10__ {int (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;scalar_t__ (* put ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_9__ {int size; int ** data; } ;
typedef TYPE_1__ DBT ;


 int EX_SOFTWARE ;
 int exit (int ) ;
 int free (int **) ;
 int memcpy (int **,int **,int) ;
 int perror (char*) ;
 int ** strdup (char const*) ;
 int strlen (char const*) ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ stub2 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 int * symbol_create (char const*) ;
 TYPE_2__* symtable ;

symbol_t *
symtable_get(const char *name)
{
 symbol_t *stored_ptr;
 DBT key;
 DBT data;
 int retval;

 key.data = strdup(name);
 key.size = strlen(name);

 if ((retval = symtable->get(symtable, &key, &data, 0)) != 0) {
  if (retval == -1) {
   perror("Symbol table get operation failed");
   exit(EX_SOFTWARE);

  } else if (retval == 1) {

   symbol_t *new_symbol;

   new_symbol = symbol_create(name);
   data.data = &new_symbol;
   data.size = sizeof(new_symbol);
   if (symtable->put(symtable, &key, &data,
                0) !=0) {
    perror("Symtable put failed");
    exit(EX_SOFTWARE);
   }
   free(key.data);
   return (new_symbol);
  } else {
   perror("Unexpected return value from db get routine");
   exit(EX_SOFTWARE);

  }
 }
 memcpy(&stored_ptr, data.data, sizeof(stored_ptr));
 free(key.data);
 return (stored_ptr);
}
