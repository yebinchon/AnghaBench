
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reflog_expire_cfg {char* pattern; struct reflog_expire_cfg* next; } ;


 int FLEX_ALLOC_MEM (struct reflog_expire_cfg*,char const*,char const*,size_t) ;
 struct reflog_expire_cfg* reflog_expire_cfg ;
 struct reflog_expire_cfg** reflog_expire_cfg_tail ;
 int strncmp (char*,char const*,size_t) ;

__attribute__((used)) static struct reflog_expire_cfg *find_cfg_ent(const char *pattern, size_t len)
{
 struct reflog_expire_cfg *ent;

 if (!reflog_expire_cfg_tail)
  reflog_expire_cfg_tail = &reflog_expire_cfg;

 for (ent = reflog_expire_cfg; ent; ent = ent->next)
  if (!strncmp(ent->pattern, pattern, len) &&
      ent->pattern[len] == '\0')
   return ent;

 FLEX_ALLOC_MEM(ent, pattern, pattern, len);
 *reflog_expire_cfg_tail = ent;
 reflog_expire_cfg_tail = &(ent->next);
 return ent;
}
