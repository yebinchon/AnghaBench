
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exp_file ;
 char* fgetln (int ,size_t*) ;
 char* line ;
 size_t linesize ;
 int memcpy (char*,char*,size_t) ;
 int out_of_mem () ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static int
get_line(void)
{
 char *p, *cp;
 size_t len;
 int totlen, cont_line;




 p = line;
 totlen = 0;
 do {
  if ((p = fgetln(exp_file, &len)) == ((void*)0))
   return (0);
  cp = p + len - 1;
  cont_line = 0;
  while (cp >= p &&
      (*cp == ' ' || *cp == '\t' || *cp == '\n' || *cp == '\\')) {
   if (*cp == '\\')
    cont_line = 1;
   cp--;
   len--;
  }
  if (cont_line) {
   *++cp = ' ';
   len++;
  }
  if (linesize < len + totlen + 1) {
   linesize = len + totlen + 1;
   line = realloc(line, linesize);
   if (line == ((void*)0))
    out_of_mem();
  }
  memcpy(line + totlen, p, len);
  totlen += len;
  line[totlen] = '\0';
 } while (totlen == 0 || cont_line);
 return (1);
}
