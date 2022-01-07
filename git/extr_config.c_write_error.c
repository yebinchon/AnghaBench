
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error (int ,char const*) ;

__attribute__((used)) static int write_error(const char *filename)
{
 error(_("failed to write new configuration file %s"), filename);


 return 4;
}
