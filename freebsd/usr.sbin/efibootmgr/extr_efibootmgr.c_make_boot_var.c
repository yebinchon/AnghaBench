
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct entry {char* name; int guid; } ;
typedef char* efidp ;


 size_t BAD_LENGTH ;
 int COMMON_ATTRS ;
 int EFI_GLOBAL_GUID ;
 int LIST_INSERT_HEAD (int *,struct entry*,int ) ;
 int LOAD_OPTION_ACTIVE ;
 int LOAD_OPTION_CATEGORY_BOOT ;
 size_t MAX_DP_LEN ;
 int MAX_LOADOPT_LEN ;
 int add_to_boot_order (char*) ;
 int assert (int ) ;
 size_t create_loadopt (char*,int,int ,char*,size_t,char const*,char const*,scalar_t__) ;
 int efi_set_variable (int ,char*,char*,size_t,int ) ;
 size_t efidp_size (char*) ;
 scalar_t__ efivar_unix_path_to_device_path (char const*,char**) ;
 int efivars ;
 int entries ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int free (char*) ;
 char* make_boot_var_name (int ) ;
 char* make_next_boot_var_name () ;
 void* malloc (int) ;
 int memcpy (char*,char*,size_t) ;
 int memset (struct entry*,int ,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
make_boot_var(const char *label, const char *loader, const char *kernel, const char *env, bool dry_run,
    int bootnum, bool activate)
{
 struct entry *new_ent;
 uint32_t load_attrs = 0;
 uint8_t *load_opt_buf;
 size_t lopt_size, llen, klen;
 efidp dp, loaderdp, kerneldp;
 char *bootvar = ((void*)0);
 int ret;

 assert(label != ((void*)0));

 if (bootnum == -1)
  bootvar = make_next_boot_var_name();
 else
  bootvar = make_boot_var_name((uint16_t)bootnum);
 if (bootvar == ((void*)0))
  err(1, "bootvar creation");
 if (loader == ((void*)0))
  errx(1, "Must specify boot loader");
 if (efivar_unix_path_to_device_path(loader, &loaderdp) != 0)
  err(1, "Cannot translate unix loader path '%s' to UEFI", loader);
 if (kernel != ((void*)0)) {
  if (efivar_unix_path_to_device_path(kernel, &kerneldp) != 0)
   err(1, "Cannot translate unix kernel path '%s' to UEFI", kernel);
 } else {
  kerneldp = ((void*)0);
 }
 llen = efidp_size(loaderdp);
 if (llen > MAX_DP_LEN)
  errx(1, "Loader path too long.");
 klen = efidp_size(kerneldp);
 if (klen > MAX_DP_LEN)
  errx(1, "Kernel path too long.");
 dp = malloc(llen + klen);
 if (dp == ((void*)0))
  errx(1, "Can't allocate memory for new device paths");
 memcpy(dp, loaderdp, llen);
 if (kerneldp != ((void*)0))
  memcpy((char *)dp + llen, kerneldp, klen);


 load_attrs = LOAD_OPTION_CATEGORY_BOOT;
 if (activate)
  load_attrs |= LOAD_OPTION_ACTIVE;
 load_opt_buf = malloc(MAX_LOADOPT_LEN);
 if (load_opt_buf == ((void*)0))
  err(1, "malloc");

 lopt_size = create_loadopt(load_opt_buf, MAX_LOADOPT_LEN, load_attrs,
     dp, llen + klen, label, env, env ? strlen(env) + 1 : 0);
 if (lopt_size == BAD_LENGTH)
  errx(1, "Can't create loadopt");

 ret = 0;
 if (!dry_run) {
  ret = efi_set_variable(EFI_GLOBAL_GUID, bootvar,
      (uint8_t*)load_opt_buf, lopt_size, COMMON_ATTRS);
 }

 if (ret)
  err(1, "efi_set_variable");

 if (!dry_run)
  add_to_boot_order(bootvar);
 new_ent = malloc(sizeof(struct entry));
 if (new_ent == ((void*)0))
  err(1, "malloc");
 memset(new_ent, 0, sizeof(struct entry));
 new_ent->name = bootvar;
 new_ent->guid = EFI_GLOBAL_GUID;
 LIST_INSERT_HEAD(&efivars, new_ent, entries);
 free(load_opt_buf);
 free(dp);

 return 0;
}
