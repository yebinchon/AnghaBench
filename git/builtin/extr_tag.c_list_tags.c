
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int dummy; } ;
struct ref_format {char* format; } ;
struct ref_filter {int lines; int with_commit_tag_algo; } ;
struct ref_array {int nr; int * items; } ;
typedef int array ;


 int FILTER_REFS_TAGS ;
 int _ (char*) ;
 int die (int ) ;
 int filter_refs (struct ref_array*,struct ref_filter*,int ) ;
 int free (char*) ;
 int memset (struct ref_array*,int ,int) ;
 int ref_array_clear (struct ref_array*) ;
 int ref_array_sort (struct ref_sorting*,struct ref_array*) ;
 int show_ref_array_item (int ,struct ref_format*) ;
 scalar_t__ verify_ref_format (struct ref_format*) ;
 char* xstrfmt (char*,char*,int) ;

__attribute__((used)) static int list_tags(struct ref_filter *filter, struct ref_sorting *sorting,
       struct ref_format *format)
{
 struct ref_array array;
 char *to_free = ((void*)0);
 int i;

 memset(&array, 0, sizeof(array));

 if (filter->lines == -1)
  filter->lines = 0;

 if (!format->format) {
  if (filter->lines) {
   to_free = xstrfmt("%s %%(contents:lines=%d)",
       "%(align:15)%(refname:lstrip=2)%(end)",
       filter->lines);
   format->format = to_free;
  } else
   format->format = "%(refname:lstrip=2)";
 }

 if (verify_ref_format(format))
  die(_("unable to parse format string"));
 filter->with_commit_tag_algo = 1;
 filter_refs(&array, filter, FILTER_REFS_TAGS);
 ref_array_sort(sorting, &array);

 for (i = 0; i < array.nr; i++)
  show_ref_array_item(array.items[i], format);
 ref_array_clear(&array);
 free(to_free);

 return 0;
}
