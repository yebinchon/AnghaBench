
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cachename ;
 int errx (int,char*,int ) ;
 int infilename ;
 scalar_t__ is_nonempty_file (int ) ;
 int parse_one_file (int ) ;
 scalar_t__ readcache ;
 int reading_cache ;

void
parse_conf_file(void)
{
 if (!is_nonempty_file(infilename))
  errx(1, "fatal: input file \"%s\" not found", infilename);

 parse_one_file(infilename);
 if (readcache && is_nonempty_file(cachename)) {
  reading_cache = 1;
  parse_one_file(cachename);
 }
}
