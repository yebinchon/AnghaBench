
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_size; int * fp_type; } ;


 int EINVAL ;
 TYPE_1__* fp_table ;
 int get_flags (char*) ;
 size_t strlen (int *) ;
 size_t strnlen (char*,size_t) ;
 char* strstr (char const*,int *) ;

__attribute__((used)) static int
get_fp(const char *entry, char **type, unsigned char **digest, int *flags)
{
 char *delimiter;
 char *local_digest;
 char *fp_type;
 char *prev_fp_type;
 size_t min_len;
 int i;

 delimiter = ((void*)0);
 fp_type = ((void*)0);
 prev_fp_type = ((void*)0);

 for (i = 0; fp_table[i].fp_type != ((void*)0); i++) {
  fp_type = strstr(entry, fp_table[i].fp_type);

  while (fp_type != ((void*)0)) {
   prev_fp_type = fp_type;
   fp_type++;
   fp_type = strstr(fp_type, fp_table[i].fp_type);
  }
  fp_type = prev_fp_type;
  if (fp_type != ((void*)0)) {
   if (fp_type == entry || fp_type[-1] != ' ')
    return (EINVAL);





   min_len = strlen(fp_table[i].fp_type) +
    2 * fp_table[i].fp_size;

   if (strnlen(fp_type, min_len) < min_len)
    return (EINVAL);

   local_digest = &fp_type[strlen(fp_table[i].fp_type)];
   delimiter = &local_digest[2 * fp_table[i].fp_size];





   if (*delimiter != '\n' &&
       *delimiter != '\0' &&
       *delimiter != ' ')
    return (EINVAL);




   if (*delimiter == ' ' && flags != ((void*)0))
    *flags = get_flags(delimiter);





   local_digest[-1] = '\0';
   *delimiter = '\0';
   fp_type[-1] = '\0';
   break;
  }
 }

 if (fp_type == ((void*)0))
  return (EINVAL);

 if (type != ((void*)0))
  *type = fp_type;

 if (digest != ((void*)0))
  *digest = local_digest;

 return (0);
}
