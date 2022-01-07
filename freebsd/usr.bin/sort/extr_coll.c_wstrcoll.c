
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_value {int k; } ;


 int BWSLEN (int ) ;
 int bwscoll (int ,int ,size_t) ;
 int bwsprintf (int ,int ,char*,char*) ;
 scalar_t__ debug_sort ;
 int printf (char*,int) ;
 int stdout ;

__attribute__((used)) static int
wstrcoll(struct key_value *kv1, struct key_value *kv2, size_t offset)
{

 if (debug_sort) {
  if (offset)
   printf("; offset=%d\n", (int) offset);
  bwsprintf(stdout, kv1->k, "; k1=<", ">");
  printf("(%zu)", BWSLEN(kv1->k));
  bwsprintf(stdout, kv2->k, ", k2=<", ">");
  printf("(%zu)", BWSLEN(kv2->k));
 }

 return (bwscoll(kv1->k, kv2->k, offset));
}
