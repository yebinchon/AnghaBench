
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LINENUM ;


 char* ifetch (int ,int ) ;
 int ofp ;
 int putc (char,int ) ;

__attribute__((used)) static void
dump_line(LINENUM line, bool write_newline)
{
 char *s;

 s = ifetch(line, 0);
 if (s == ((void*)0))
  return;

 for (; *s != '\n'; s++)
  putc(*s, ofp);
 if (write_newline)
  putc('\n', ofp);
}
