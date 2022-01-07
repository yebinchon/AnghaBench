
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static int match_word(const char *word, int len, const char *match)
{
 return !strncasecmp(word, match, len) && !match[len];
}
