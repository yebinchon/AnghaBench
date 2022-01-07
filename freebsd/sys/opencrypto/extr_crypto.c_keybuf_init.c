
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybuf {int dummy; } ;
typedef int * caddr_t ;


 int MODINFOMD_KEYBUF ;
 int MODINFO_METADATA ;
 struct keybuf empty_keybuf ;
 struct keybuf* keybuf ;
 int * preload_search_by_type (char*) ;
 scalar_t__ preload_search_info (int *,int) ;

__attribute__((used)) static void
keybuf_init(void)
{
 caddr_t kmdp;

 kmdp = preload_search_by_type("elf kernel");

 if (kmdp == ((void*)0))
  kmdp = preload_search_by_type("elf64 kernel");

 keybuf = (struct keybuf *)preload_search_info(kmdp,
     MODINFO_METADATA | MODINFOMD_KEYBUF);

        if (keybuf == ((void*)0))
                keybuf = &empty_keybuf;
}
