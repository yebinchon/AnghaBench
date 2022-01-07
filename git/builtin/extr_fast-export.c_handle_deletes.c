
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refspec_item {char* dst; scalar_t__* src; } ;
struct TYPE_2__ {int nr; struct refspec_item* items; } ;


 int null_oid ;
 char* oid_to_hex (int *) ;
 int printf (char*,char*,char*) ;
 TYPE_1__ refspecs ;

__attribute__((used)) static void handle_deletes(void)
{
 int i;
 for (i = 0; i < refspecs.nr; i++) {
  struct refspec_item *refspec = &refspecs.items[i];
  if (*refspec->src)
   continue;

  printf("reset %s\nfrom %s\n\n",
    refspec->dst, oid_to_hex(&null_oid));
 }
}
