
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct label {int dummy; } ;
typedef int intmax_t ;


 int EINVAL ;
 int MAC_PARTITION_LABEL_NAME ;
 scalar_t__ SLOT (struct label*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
partition_cred_externalize_label(struct label *label, char *element_name,
    struct sbuf *sb, int *claimed)
{

 if (strcmp(MAC_PARTITION_LABEL_NAME, element_name) != 0)
  return (0);

 (*claimed)++;

 if (label != ((void*)0)) {
  if (sbuf_printf(sb, "%jd", (intmax_t)SLOT(label)) == -1)
   return (EINVAL);
 } else {
  if (sbuf_printf(sb, "0") == -1)
   return (EINVAL);
 }
 return (0);
}
