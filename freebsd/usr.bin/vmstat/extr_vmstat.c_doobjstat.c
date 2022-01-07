
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_vmobject {int dummy; } ;


 int display_object (struct kinfo_vmobject*) ;
 int free (struct kinfo_vmobject*) ;
 struct kinfo_vmobject* kinfo_getvmobject (int*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*) ;
 int xo_open_list (char*) ;
 int xo_warn (char*) ;

__attribute__((used)) static void
doobjstat(void)
{
 struct kinfo_vmobject *kvo;
 int cnt, i;

 kvo = kinfo_getvmobject(&cnt);
 if (kvo == ((void*)0)) {
  xo_warn("Failed to fetch VM object list");
  return;
 }
 xo_emit("{T:RES/%5s} {T:ACT/%5s} {T:INACT/%5s} {T:REF/%3s} {T:SHD/%3s} "
     "{T:CM/%3s} {T:TP/%2s} {T:PATH/%s}\n");
 xo_open_list("object");
 for (i = 0; i < cnt; i++)
  display_object(&kvo[i]);
 free(kvo);
 xo_close_list("object");
}
