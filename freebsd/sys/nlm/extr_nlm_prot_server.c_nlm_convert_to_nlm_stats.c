
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nlm_stats { ____Placeholder_nlm_stats } nlm_stats ;
typedef enum nlm4_stats { ____Placeholder_nlm4_stats } nlm4_stats ;


 int nlm4_deadlck ;
 int nlm_denied ;

__attribute__((used)) static enum nlm_stats
nlm_convert_to_nlm_stats(enum nlm4_stats src)
{
 if (src > nlm4_deadlck)
  return nlm_denied;
 return (enum nlm_stats) src;
}
