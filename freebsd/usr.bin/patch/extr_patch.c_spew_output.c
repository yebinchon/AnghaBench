
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_till (scalar_t__,int) ;
 int debug ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ input_lines ;
 int last_frozen_line ;
 int * ofp ;
 int say (char*,scalar_t__,int ) ;

__attribute__((used)) static bool
spew_output(void)
{
 int rv;





 if (input_lines)
  copy_till(input_lines, 1);
 rv = ferror(ofp) == 0 && fclose(ofp) == 0;
 ofp = ((void*)0);
 return rv;
}
