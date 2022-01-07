
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str {int len; int dat; } ;


 int fileeol ;
 int fwrite (int ,int ,int,int ) ;
 int printline_metadata (struct str*,int) ;
 int putchar (int ) ;
 int stdout ;

void grep_printline(struct str *line, int sep) {
 printline_metadata(line, sep);
 fwrite(line->dat, line->len, 1, stdout);
 putchar(fileeol);
}
