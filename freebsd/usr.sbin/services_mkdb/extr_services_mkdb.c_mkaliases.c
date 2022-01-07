
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sl_cur; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 size_t strlcpy (char*,char*,size_t) ;
 int warn (char*,char*) ;

__attribute__((used)) static const char *
mkaliases(StringList *sl, char *buf, size_t len)
{
 size_t nc, i, pos;

 buf[0] = 0;
 for (i = 1, pos = 0; i < sl->sl_cur; i++) {
  nc = strlcpy(buf + pos, sl->sl_str[i], len);
  if (nc >= len)
   goto out;
  pos += nc;
  len -= nc;
  nc = strlcpy(buf + pos, " ", len);
  if (nc >= len)
   goto out;
  pos += nc;
  len -= nc;
 }
 return buf;
out:
 warn("aliases for `%s' truncated", sl->sl_str[0]);
 return buf;
}
