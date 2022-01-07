
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_filepair {char status; TYPE_2__* two; TYPE_1__* one; } ;
struct TYPE_4__ {char* path; } ;
struct TYPE_3__ {char* path; } ;


 int memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int depth_first(const void *a_, const void *b_)
{
 const struct diff_filepair *a = *((const struct diff_filepair **)a_);
 const struct diff_filepair *b = *((const struct diff_filepair **)b_);
 const char *name_a, *name_b;
 int len_a, len_b, len;
 int cmp;

 name_a = a->one ? a->one->path : a->two->path;
 name_b = b->one ? b->one->path : b->two->path;

 len_a = strlen(name_a);
 len_b = strlen(name_b);
 len = (len_a < len_b) ? len_a : len_b;


 cmp = memcmp(name_a, name_b, len);
 if (cmp)
  return cmp;
 cmp = len_b - len_a;
 if (cmp)
  return cmp;





 return (a->status == 'R') - (b->status == 'R');
}
