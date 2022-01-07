
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PARTITION_LABEL_NAME ;
 int SLOT_SET (struct label*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int
partition_cred_internalize_label(struct label *label, char *element_name,
    char *element_data, int *claimed)
{

 if (strcmp(MAC_PARTITION_LABEL_NAME, element_name) != 0)
  return (0);

 (*claimed)++;
 SLOT_SET(label, strtol(element_data, ((void*)0), 10));
 return (0);
}
