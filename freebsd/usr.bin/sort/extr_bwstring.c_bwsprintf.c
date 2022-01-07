
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cstr; char* wstr; } ;
struct bwstring {TYPE_1__ data; } ;
typedef int FILE ;


 int MB_CUR_MAX ;
 int fprintf (int *,char*,char const*,char*,char const*) ;

void
bwsprintf(FILE *f, struct bwstring *bws, const char *prefix, const char *suffix)
{

 if (MB_CUR_MAX == 1)
  fprintf(f, "%s%s%s", prefix, bws->data.cstr, suffix);
 else
  fprintf(f, "%s%S%s", prefix, bws->data.wstr, suffix);
}
