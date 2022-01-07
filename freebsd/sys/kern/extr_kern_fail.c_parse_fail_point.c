
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fail_point_setting {int dummy; } ;


 int FP_MAX_ENTRY_COUNT ;
 char* parse_term (struct fail_point_setting*,char*) ;

__attribute__((used)) static char *
parse_fail_point(struct fail_point_setting *ents, char *p)
{



 uint8_t term_count;

 term_count = 1;

 p = parse_term(ents, p);
 if (p == ((void*)0))
  return (((void*)0));

 while (*p != '\0') {
  term_count++;
  if (p[0] != '-' || p[1] != '>' ||
          (p = parse_term(ents, p+2)) == ((void*)0) ||
          term_count > FP_MAX_ENTRY_COUNT)
   return (((void*)0));
 }
 return (p);
}
