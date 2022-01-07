
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {unsigned int ce_mode; } ;


 scalar_t__ S_ISLNK (unsigned int) ;
 scalar_t__ S_ISREG (unsigned int) ;
 unsigned int create_ce_mode (unsigned int) ;

__attribute__((used)) static inline unsigned int ce_mode_from_stat(const struct cache_entry *ce,
          unsigned int mode)
{
 extern int trust_executable_bit, has_symlinks;
 if (!has_symlinks && S_ISREG(mode) &&
     ce && S_ISLNK(ce->ce_mode))
  return ce->ce_mode;
 if (!trust_executable_bit && S_ISREG(mode)) {
  if (ce && S_ISREG(ce->ce_mode))
   return ce->ce_mode;
  return create_ce_mode(0666);
 }
 return create_ce_mode(mode);
}
