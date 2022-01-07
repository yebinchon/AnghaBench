
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fgets (char*,size_t,int ) ;
 int infile ;
 int infp ;
 int outfile ;
 scalar_t__ rflag ;
 int warnx (char*,int ,int ) ;

__attribute__((used)) static int
get_line(char *buf, size_t size)
{

 if (fgets(buf, size, infp) != ((void*)0))
  return (2);
 if (rflag)
  return (0);
 warnx("%s: %s: short file", infile, outfile);
 return (1);
}
