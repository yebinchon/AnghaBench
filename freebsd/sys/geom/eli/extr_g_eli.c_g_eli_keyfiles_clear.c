
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int name ;


 int bzero (int *,size_t) ;
 int * preload_fetch_addr (int *) ;
 size_t preload_fetch_size (int *) ;
 int * preload_search_by_type (char*) ;
 int snprintf (char*,int,char*,char const*,int) ;

__attribute__((used)) static void
g_eli_keyfiles_clear(const char *provider)
{
 u_char *keyfile, *data;
 char name[64];
 size_t size;
 int i;

 for (i = 0; ; i++) {
  snprintf(name, sizeof(name), "%s:geli_keyfile%d", provider, i);
  keyfile = preload_search_by_type(name);
  if (keyfile == ((void*)0))
   return;
  data = preload_fetch_addr(keyfile);
  size = preload_fetch_size(keyfile);
  if (data != ((void*)0) && size != 0)
   bzero(data, size);
 }
}
