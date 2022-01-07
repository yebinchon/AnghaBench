
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t date_len (char const*,int) ;
 size_t fractional_time_len (char const*,int) ;
 int isdigit (char const) ;
 size_t sane_tz_len (char const*,int) ;
 size_t short_time_len (char const*,int) ;
 int trailing_spaces_len (char const*,int) ;
 size_t tz_with_colon_len (char const*,int) ;

__attribute__((used)) static size_t diff_timestamp_len(const char *line, size_t len)
{
 const char *end = line + len;
 size_t n;






 if (!isdigit(end[-1]))
  return 0;

 n = sane_tz_len(line, end - line);
 if (!n)
  n = tz_with_colon_len(line, end - line);
 end -= n;

 n = short_time_len(line, end - line);
 if (!n)
  n = fractional_time_len(line, end - line);
 end -= n;

 n = date_len(line, end - line);
 if (!n)
  return 0;
 end -= n;

 if (end == line)
  return 0;
 if (end[-1] == '\t') {
  end--;
  return line + len - end;
 }
 if (end[-1] != ' ')
  return 0;


 end -= trailing_spaces_len(line, end - line);
 return line + len - end;
}
