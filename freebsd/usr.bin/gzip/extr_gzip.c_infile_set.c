
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 char const* infile ;
 int infile_total ;

__attribute__((used)) static void
infile_set(const char *newinfile, off_t total)
{

 if (newinfile)
  infile = newinfile;

 infile_total = total;

}
