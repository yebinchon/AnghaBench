
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fragment {int newlines; int newpos; int oldlines; int oldpos; } ;


 int parse_range (char const*,int,int,char*,int *,int *) ;

__attribute__((used)) static int parse_fragment_header(const char *line, int len, struct fragment *fragment)
{
 int offset;

 if (!len || line[len-1] != '\n')
  return -1;


 offset = parse_range(line, len, 4, " +", &fragment->oldpos, &fragment->oldlines);
 offset = parse_range(line, len, offset, " @@", &fragment->newpos, &fragment->newlines);

 return offset;
}
