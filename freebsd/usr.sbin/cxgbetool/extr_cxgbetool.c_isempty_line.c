
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int
isempty_line(char *line, size_t llen)
{


 while (isspace(*line)) {
  line++;
  llen--;
 }
 if (llen == 0 || *line == '#' || *line == '\n')
  return (1);

 return (0);
}
