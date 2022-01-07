
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_specs {int pos1b; int c1; int f1; } ;
struct bwstring {int dummy; } ;


 size_t skip_cols_to_start (struct bwstring const*,int ,size_t,int ,int*) ;
 size_t skip_fields_to_start (struct bwstring const*,int ,int*) ;

__attribute__((used)) static void
find_field_start(const struct bwstring *s, struct key_specs *ks,
    size_t *field_start, size_t *key_start, bool *empty_field, bool *empty_key)
{

 *field_start = skip_fields_to_start(s, ks->f1, empty_field);
 if (!*empty_field)
  *key_start = skip_cols_to_start(s, ks->c1, *field_start,
      ks->pos1b, empty_key);
 else
  *empty_key = 1;
}
