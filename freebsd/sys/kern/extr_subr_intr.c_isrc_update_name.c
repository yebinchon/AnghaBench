
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {char* isrc_name; scalar_t__ isrc_index; } ;


 int INTRNAME_LEN ;
 int MA_OWNED ;
 int intrcnt_setname (char*,scalar_t__) ;
 int isrc_table_lock ;
 int mtx_assert (int *,int ) ;
 int snprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static void
isrc_update_name(struct intr_irqsrc *isrc, const char *name)
{
 char str[INTRNAME_LEN];

 mtx_assert(&isrc_table_lock, MA_OWNED);

 if (name != ((void*)0)) {
  snprintf(str, INTRNAME_LEN, "%s: %s", isrc->isrc_name, name);
  intrcnt_setname(str, isrc->isrc_index);
  snprintf(str, INTRNAME_LEN, "stray %s: %s", isrc->isrc_name,
      name);
  intrcnt_setname(str, isrc->isrc_index + 1);
 } else {
  snprintf(str, INTRNAME_LEN, "%s:", isrc->isrc_name);
  intrcnt_setname(str, isrc->isrc_index);
  snprintf(str, INTRNAME_LEN, "stray %s:", isrc->isrc_name);
  intrcnt_setname(str, isrc->isrc_index + 1);
 }
}
