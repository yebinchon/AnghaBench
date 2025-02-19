
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_stat {scalar_t__ lonelf; scalar_t__ crlf; } ;


 int CONVERT_STAT_BITS_BIN ;
 int CONVERT_STAT_BITS_TXT_CRLF ;
 int CONVERT_STAT_BITS_TXT_LF ;
 scalar_t__ convert_is_binary (struct text_stat*) ;
 int gather_stats (char const*,unsigned long,struct text_stat*) ;

__attribute__((used)) static unsigned int gather_convert_stats(const char *data, unsigned long size)
{
 struct text_stat stats;
 int ret = 0;
 if (!data || !size)
  return 0;
 gather_stats(data, size, &stats);
 if (convert_is_binary(&stats))
  ret |= CONVERT_STAT_BITS_BIN;
 if (stats.crlf)
  ret |= CONVERT_STAT_BITS_TXT_CRLF;
 if (stats.lonelf)
  ret |= CONVERT_STAT_BITS_TXT_LF;

 return ret;
}
