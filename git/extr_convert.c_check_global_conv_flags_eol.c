
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_stat {scalar_t__ lonelf; scalar_t__ crlf; } ;
typedef enum crlf_action { ____Placeholder_crlf_action } crlf_action ;


 int CONV_EOL_RNDTRP_DIE ;
 int CONV_EOL_RNDTRP_WARN ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static void check_global_conv_flags_eol(const char *path, enum crlf_action crlf_action,
       struct text_stat *old_stats, struct text_stat *new_stats,
       int conv_flags)
{
 if (old_stats->crlf && !new_stats->crlf ) {



  if (conv_flags & CONV_EOL_RNDTRP_DIE)
   die(_("CRLF would be replaced by LF in %s"), path);
  else if (conv_flags & CONV_EOL_RNDTRP_WARN)
   warning(_("CRLF will be replaced by LF in %s.\n"
      "The file will have its original line"
      " endings in your working directory"), path);
 } else if (old_stats->lonelf && !new_stats->lonelf ) {



  if (conv_flags & CONV_EOL_RNDTRP_DIE)
   die(_("LF would be replaced by CRLF in %s"), path);
  else if (conv_flags & CONV_EOL_RNDTRP_WARN)
   warning(_("LF will be replaced by CRLF in %s.\n"
      "The file will have its original line"
      " endings in your working directory"), path);
 }
}
