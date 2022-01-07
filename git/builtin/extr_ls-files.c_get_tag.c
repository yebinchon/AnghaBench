
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_flags; } ;


 int CE_FSMONITOR_VALID ;
 int CE_VALID ;
 scalar_t__ isalpha (char const) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ show_fsmonitor_bit ;
 scalar_t__ show_valid_bit ;
 char tolower (char const) ;

__attribute__((used)) static const char *get_tag(const struct cache_entry *ce, const char *tag)
{
 static char alttag[4];

 if (tag && *tag && ((show_valid_bit && (ce->ce_flags & CE_VALID)) ||
  (show_fsmonitor_bit && (ce->ce_flags & CE_FSMONITOR_VALID)))) {
  memcpy(alttag, tag, 3);

  if (isalpha(tag[0])) {
   alttag[0] = tolower(tag[0]);
  } else if (tag[0] == '?') {
   alttag[0] = '!';
  } else {
   alttag[0] = 'v';
   alttag[1] = tag[0];
   alttag[2] = ' ';
   alttag[3] = 0;
  }

  tag = alttag;
 }

 return tag;
}
