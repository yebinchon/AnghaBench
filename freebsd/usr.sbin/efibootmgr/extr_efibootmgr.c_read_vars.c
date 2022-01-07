
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int idx; int guid; int attrs; int size; int data; int name; } ;
typedef int efi_guid_t ;


 int EFI_GLOBAL_GUID ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct entry*,int ) ;
 int efi_get_next_variable_name (int **,char**) ;
 int efi_get_variable (int ,char*,int *,int *,int *) ;
 scalar_t__ efi_guid_cmp (int *,int *) ;
 int efivars ;
 int entries ;
 int err (int,char*) ;
 int isxdigit (char) ;
 struct entry* malloc (int) ;
 int strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void
read_vars(void)
{

 efi_guid_t *guid;
 char *next_name = ((void*)0);
 int ret = 0;

 struct entry *nent;

 LIST_INIT(&efivars);
 while ((ret = efi_get_next_variable_name(&guid, &next_name)) > 0) {



  if (efi_guid_cmp(guid, &EFI_GLOBAL_GUID) != 0 ||
      strlen(next_name) != 8 ||
      strncmp(next_name, "Boot", 4) != 0 ||
      !isxdigit(next_name[4]) ||
      !isxdigit(next_name[5]) ||
      !isxdigit(next_name[6]) ||
      !isxdigit(next_name[7]))
   continue;
  nent = malloc(sizeof(struct entry));
  nent->name = strdup(next_name);

  ret = efi_get_variable(*guid, next_name, &nent->data,
      &nent->size, &nent->attrs);
  if (ret < 0)
   err(1, "efi_get_variable");
  nent->guid = *guid;
  nent->idx = strtoul(&next_name[4], ((void*)0), 16);
  LIST_INSERT_HEAD(&efivars, nent, entries);
 }
}
