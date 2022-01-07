
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 scalar_t__ iswalnum (char const) ;
 scalar_t__ iswspace (char const) ;
 int iswupper (int ) ;

__attribute__((used)) static int
might_be_header(const wchar_t *line)
{
 if (!iswupper(*line++))
  return 0;
 while (*line && (iswalnum(*line) || *line == '-'))
  ++line;
 return (*line == ':' && iswspace(line[1]));
}
