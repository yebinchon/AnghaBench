
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; int serial; } ;


 TYPE_1__** file ;
 int* len ;
 int pref ;
 TYPE_1__** sfile ;
 int* slen ;
 int suff ;

__attribute__((used)) static void
prune(void)
{
 int i, j;

 for (pref = 0; pref < len[0] && pref < len[1] &&
     file[0][pref + 1].value == file[1][pref + 1].value;
     pref++)
  ;
 for (suff = 0; suff < len[0] - pref && suff < len[1] - pref &&
     file[0][len[0] - suff].value == file[1][len[1] - suff].value;
     suff++)
  ;
 for (j = 0; j < 2; j++) {
  sfile[j] = file[j] + pref;
  slen[j] = len[j] - pref - suff;
  for (i = 0; i <= slen[j]; i++)
   sfile[j][i].serial = i;
 }
}
