
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rulehead {int dummy; } ;
struct rule {int dummy; } ;


 int TAILQ_INSERT_TAIL (struct rulehead*,struct rule*,int ) ;
 int parse_rule_element (char*,struct rule**) ;
 int r_entries ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char*) ;
 int toast_rules (struct rulehead*) ;

__attribute__((used)) static int
parse_rules(char *string, struct rulehead *head)
{
 struct rule *new;
 char *element;
 int error;

 error = 0;
 while ((element = strsep(&string, ",")) != ((void*)0)) {
  if (strlen(element) == 0)
   continue;
  error = parse_rule_element(element, &new);
  if (error)
   goto out;
  TAILQ_INSERT_TAIL(head, new, r_entries);
 }
out:
 if (error != 0)
  toast_rules(head);
 return (error);
}
