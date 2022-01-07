
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PE_EOF ;
 int PE_EOL ;
 int parse_advance (char**) ;
 int parse_peek (char**) ;

__attribute__((used)) static int
parse_skipto(char **conf, int mc)
{
 int c, match;

 while (1) {
  c = parse_peek(conf);
  if (c == 0)
   return (PE_EOF);
  switch (mc) {
  case 128:
   match = (c == ' ' || c == '\t' || c == '\n') ? 1 : 0;
   break;
  case 129:
   if (c == '\n')
    return (PE_EOL);
   match = (c != ' ' && c != '\t') ? 1 : 0;
   break;
  default:
   match = (c == mc) ? 1 : 0;
   break;
  }
  if (match)
   break;
  parse_advance(conf);
 }
 return (0);
}
