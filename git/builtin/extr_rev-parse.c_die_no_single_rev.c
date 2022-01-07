
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int exit (int) ;

__attribute__((used)) static void die_no_single_rev(int quiet)
{
 if (quiet)
  exit(1);
 else
  die("Needed a single revision");
}
