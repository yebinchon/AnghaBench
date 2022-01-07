
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {int dummy; } ;
struct pattern {int pattern; } ;


 int ENOMEM ;
 int STAILQ_INSERT_TAIL (struct pattern_list*,struct pattern*,int ) ;
 int debug (char*,char const*) ;
 int errno ;
 int error (char*) ;
 int link ;
 struct pattern* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
add_pattern(struct pattern_list *list, const char *pattern)
{
 struct pattern *entry;
 size_t len;

 debug("adding pattern '%s'\n", pattern);
 len = strlen(pattern);
 if ((entry = malloc(sizeof *entry + len + 1)) == ((void*)0)) {
  errno = ENOMEM;
  error("malloc()");
 }
 memcpy(entry->pattern, pattern, len + 1);
 STAILQ_INSERT_TAIL(list, entry, link);
}
