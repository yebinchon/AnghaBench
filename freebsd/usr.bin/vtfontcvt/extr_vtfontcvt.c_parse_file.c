
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int parse_bdf (int *,unsigned int) ;
 int parse_hex (int *,unsigned int) ;
 int perror (char const*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
parse_file(const char *filename, unsigned int map_idx)
{
 FILE *fp;
 size_t len;
 int rv;

 fp = fopen(filename, "r");
 if (fp == ((void*)0)) {
  perror(filename);
  return (1);
 }
 len = strlen(filename);
 if (len > 4 && strcasecmp(filename + len - 4, ".hex") == 0)
  rv = parse_hex(fp, map_idx);
 else
  rv = parse_bdf(fp, map_idx);
 fclose(fp);
 return (rv);
}
