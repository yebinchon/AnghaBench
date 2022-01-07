
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct hmac_ctx {int dummy; } ;
typedef int name ;


 int G_ELI_DEBUG (int,char*,char*,...) ;
 int MODINFO_NAME ;
 int g_eli_crypto_hmac_update (struct hmac_ctx*,int *,size_t) ;
 int * preload_fetch_addr (int *) ;
 size_t preload_fetch_size (int *) ;
 int * preload_search_by_type (char*) ;
 char* preload_search_info (int *,int ) ;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static int
g_eli_keyfiles_load(struct hmac_ctx *ctx, const char *provider)
{
 u_char *keyfile, *data;
 char *file, name[64];
 size_t size;
 int i;

 for (i = 0; ; i++) {
  snprintf(name, sizeof(name), "%s:geli_keyfile%d", provider, i);
  keyfile = preload_search_by_type(name);
  if (keyfile == ((void*)0) && i == 0) {



   snprintf(name, sizeof(name), "%s:geli_keyfile", provider);
   keyfile = preload_search_by_type(name);
  }
  if (keyfile == ((void*)0))
   return (i);
  data = preload_fetch_addr(keyfile);
  if (data == ((void*)0)) {
   G_ELI_DEBUG(0, "Cannot find key file data for %s.",
       name);
   return (0);
  }
  size = preload_fetch_size(keyfile);
  if (size == 0) {
   G_ELI_DEBUG(0, "Cannot find key file size for %s.",
       name);
   return (0);
  }
  file = preload_search_info(keyfile, MODINFO_NAME);
  if (file == ((void*)0)) {
   G_ELI_DEBUG(0, "Cannot find key file name for %s.",
       name);
   return (0);
  }
  G_ELI_DEBUG(1, "Loaded keyfile %s for %s (type: %s).", file,
      provider, name);
  g_eli_crypto_hmac_update(ctx, data, size);
 }
}
