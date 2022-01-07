
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int perror (char const*) ;
 int stderr ;

__attribute__((used)) static void q(int line, int code, const char *text)
{
 if (code == -1)
 {
  fprintf(stderr, "Error at line %d:\n", line);
  perror(text);
  exit(errno);
 }
}
