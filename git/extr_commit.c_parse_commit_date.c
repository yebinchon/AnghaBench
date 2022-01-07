
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;


 scalar_t__ memcmp (char const*,char*,int) ;
 int parse_timestamp (char const*,int *,int) ;

__attribute__((used)) static timestamp_t parse_commit_date(const char *buf, const char *tail)
{
 const char *dateptr;

 if (buf + 6 >= tail)
  return 0;
 if (memcmp(buf, "author", 6))
  return 0;
 while (buf < tail && *buf++ != '\n')
            ;
 if (buf + 9 >= tail)
  return 0;
 if (memcmp(buf, "committer", 9))
  return 0;
 while (buf < tail && *buf++ != '>')
            ;
 if (buf >= tail)
  return 0;
 dateptr = buf;
 while (buf < tail && *buf++ != '\n')
            ;
 if (buf >= tail)
  return 0;

 return parse_timestamp(dateptr, ((void*)0), 10);
}
