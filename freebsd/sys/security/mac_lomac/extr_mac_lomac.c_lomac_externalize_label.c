
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 int MAC_LOMAC_LABEL_NAME ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_to_string (struct sbuf*,struct mac_lomac*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
lomac_externalize_label(struct label *label, char *element_name,
    struct sbuf *sb, int *claimed)
{
 struct mac_lomac *ml;

 if (strcmp(MAC_LOMAC_LABEL_NAME, element_name) != 0)
  return (0);

 (*claimed)++;

 ml = SLOT(label);

 return (lomac_to_string(sb, ml));
}
