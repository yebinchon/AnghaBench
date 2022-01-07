
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOC_ARRAY (char const**,int) ;
 int ALLOC_GROW (char const**,int,int) ;
 int FREE_AND_NULL (char const**) ;
 int SPLIT_CMDLINE_BAD_ENDING ;
 int SPLIT_CMDLINE_UNCLOSED_QUOTE ;
 scalar_t__ isspace (char) ;

int split_cmdline(char *cmdline, const char ***argv)
{
 int src, dst, count = 0, size = 16;
 char quoted = 0;

 ALLOC_ARRAY(*argv, size);


 (*argv)[count++] = cmdline;
 for (src = dst = 0; cmdline[src];) {
  char c = cmdline[src];
  if (!quoted && isspace(c)) {
   cmdline[dst++] = 0;
   while (cmdline[++src]
     && isspace(cmdline[src]))
    ;
   ALLOC_GROW(*argv, count + 1, size);
   (*argv)[count++] = cmdline + dst;
  } else if (!quoted && (c == '\'' || c == '"')) {
   quoted = c;
   src++;
  } else if (c == quoted) {
   quoted = 0;
   src++;
  } else {
   if (c == '\\' && quoted != '\'') {
    src++;
    c = cmdline[src];
    if (!c) {
     FREE_AND_NULL(*argv);
     return -SPLIT_CMDLINE_BAD_ENDING;
    }
   }
   cmdline[dst++] = c;
   src++;
  }
 }

 cmdline[dst] = 0;

 if (quoted) {
  FREE_AND_NULL(*argv);
  return -SPLIT_CMDLINE_UNCLOSED_QUOTE;
 }

 ALLOC_GROW(*argv, count + 1, size);
 (*argv)[count] = ((void*)0);

 return count;
}
