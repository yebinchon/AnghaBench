
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pat {int dummy; } ;
struct TYPE_4__ {char* pat; size_t len; } ;


 char* grep_malloc (size_t) ;
 TYPE_1__* grep_realloc (TYPE_1__*,int) ;
 int matchall ;
 int memcpy (char*,char*,size_t) ;
 TYPE_1__* pattern ;
 int pattern_sz ;
 int patterns ;

__attribute__((used)) static void
add_pattern(char *pat, size_t len)
{


 if (len == 0) {
  matchall = 1;
  return;
 }

 if (patterns == pattern_sz) {
  pattern_sz *= 2;
  pattern = grep_realloc(pattern, ++pattern_sz *
      sizeof(struct pat));
 }
 if (len > 0 && pat[len - 1] == '\n')
  --len;

 pattern[patterns].pat = grep_malloc(len + 1);
 memcpy(pattern[patterns].pat, pat, len);
 pattern[patterns].len = len;
 pattern[patterns].pat[len] = '\0';
 ++patterns;
}
