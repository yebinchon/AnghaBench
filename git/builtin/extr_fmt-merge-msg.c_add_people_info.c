
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int nr; int items; } ;
struct strbuf {int dummy; } ;


 int QSORT (int ,int ,int ) ;
 int cmp_string_list_util_as_integral ;
 int credit_people (struct strbuf*,struct string_list*,char) ;

__attribute__((used)) static void add_people_info(struct strbuf *out,
       struct string_list *authors,
       struct string_list *committers)
{
 QSORT(authors->items, authors->nr,
       cmp_string_list_util_as_integral);
 QSORT(committers->items, committers->nr,
       cmp_string_list_util_as_integral);

 credit_people(out, authors, 'a');
 credit_people(out, committers, 'c');
}
