
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef char u_char ;


 char* preload_fetch_addr (void*) ;
 int preload_fetch_size (void*) ;
 void* preload_search_by_type (char*) ;

__attribute__((used)) static void
vm_page_blacklist_load(char **list, char **end)
{
 void *mod;
 u_char *ptr;
 u_int len;

 mod = ((void*)0);
 ptr = ((void*)0);

 mod = preload_search_by_type("ram_blacklist");
 if (mod != ((void*)0)) {
  ptr = preload_fetch_addr(mod);
  len = preload_fetch_size(mod);
        }
 *list = ptr;
 if (ptr != ((void*)0))
  *end = ptr + len;
 else
  *end = ((void*)0);
 return;
}
