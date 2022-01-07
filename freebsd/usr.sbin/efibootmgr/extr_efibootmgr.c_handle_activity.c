
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int EFI_GLOBAL_GUID ;
 int LOAD_OPTION_ACTIVE ;
 int asprintf (char**,char*,char*,int) ;
 scalar_t__ efi_get_variable (int ,char*,int **,size_t*,int *) ;
 int err (int,char*,...) ;
 int le32dec (int *) ;
 int le32enc (int *,int ) ;
 scalar_t__ set_bootvar (char*,int *,size_t) ;

__attribute__((used)) static void
handle_activity(int bootnum, bool active)
{
 uint32_t attrs, load_attrs;
 uint8_t *data;
 size_t size;
 char *name;

 asprintf(&name, "%s%04X", "Boot", bootnum);
 if (name == ((void*)0))
  err(1, "asprintf");
 if (efi_get_variable(EFI_GLOBAL_GUID, name, &data, &size, &attrs) < 0)
  err(1, "No such bootvar %s\n", name);

 load_attrs = le32dec(data);

 if (active)
  load_attrs |= LOAD_OPTION_ACTIVE;
 else
  load_attrs &= ~LOAD_OPTION_ACTIVE;

 le32enc(data, load_attrs);

 if (set_bootvar(name, data, size) < 0)
  err(1, "handle activity efi_set_variable");
}
