
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ignore_pats ;
 int ignoreline_pattern (char*) ;

__attribute__((used)) static bool
ignoreline(char *line, bool skip_blanks)
{

 if (ignore_pats != ((void*)0) && skip_blanks)
  return (ignoreline_pattern(line) || *line == '\0');
 if (ignore_pats != ((void*)0))
  return (ignoreline_pattern(line));
 if (skip_blanks)
  return (*line == '\0');

 return (0);
}
