
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct patch {scalar_t__* new_oid_prefix; scalar_t__* old_oid_prefix; } ;
struct gitdiff_data {int dummy; } ;
struct TYPE_2__ {unsigned int hexsz; } ;


 int gitdiff_oldmode (struct gitdiff_data*,char const*,struct patch*) ;
 int memcpy (scalar_t__*,char const*,int) ;
 char* strchr (char const*,char) ;
 char* strchrnul (char const*,char) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int gitdiff_index(struct gitdiff_data *state,
    const char *line,
    struct patch *patch)
{




 const char *ptr, *eol;
 int len;
 const unsigned hexsz = the_hash_algo->hexsz;

 ptr = strchr(line, '.');
 if (!ptr || ptr[1] != '.' || hexsz < ptr - line)
  return 0;
 len = ptr - line;
 memcpy(patch->old_oid_prefix, line, len);
 patch->old_oid_prefix[len] = 0;

 line = ptr + 2;
 ptr = strchr(line, ' ');
 eol = strchrnul(line, '\n');

 if (!ptr || eol < ptr)
  ptr = eol;
 len = ptr - line;

 if (hexsz < len)
  return 0;
 memcpy(patch->new_oid_prefix, line, len);
 patch->new_oid_prefix[len] = 0;
 if (*ptr == ' ')
  return gitdiff_oldmode(state, ptr + 1, patch);
 return 0;
}
