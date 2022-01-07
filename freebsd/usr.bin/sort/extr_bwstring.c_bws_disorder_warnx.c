
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wstr; int cstr; } ;
struct bwstring {TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 int warnx (char*,char const*,size_t,int ) ;

void
bws_disorder_warnx(struct bwstring *s, const char *fn, size_t pos)
{

 if (MB_CUR_MAX == 1)
  warnx("%s:%zu: disorder: %s", fn, pos + 1, s->data.cstr);
 else
  warnx("%s:%zu: disorder: %ls", fn, pos + 1, s->data.wstr);
}
