
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ask (char*,...) ;
 scalar_t__ batch ;
 char* buf ;
 int fatal (char*) ;
 scalar_t__ force ;
 scalar_t__ noreverse ;
 int pch_swap () ;
 int reverse ;
 int say (char*,...) ;
 int skip_rest_of_patch ;
 scalar_t__ verbose ;

__attribute__((used)) static bool
handle_creation(bool out_existed, bool *remove)
{
 bool reverse_seen;

 reverse_seen = 0;
 if (reverse && out_existed) {





  *remove = 1;
 } else if (!reverse && out_existed) {
  if (force) {
   skip_rest_of_patch = 1;
   return (0);
  }
  if (noreverse) {

   say("Ignoring previously applied (or reversed) patch.\n");
   skip_rest_of_patch = 1;
   return (0);
  }


  if (!pch_swap())
   fatal("lost hunk on alloc error!\n");

  reverse = !reverse;

  if (batch) {
   if (verbose)
    say("Patch creates file that already exists, %s %seversed",
        reverse ? "Assuming" : "Ignoring",
        reverse ? "R" : "Unr");
  } else {
   ask("Patch creates file that already exists!  %s -R? [y] ",
       reverse ? "Assume" : "Ignore");

   if (*buf == 'n') {
    ask("Apply anyway? [n]");
    if (*buf != 'y')

     skip_rest_of_patch = 1;
    else

     reverse_seen = 1;
    reverse = !reverse;
    if (!pch_swap())
     fatal("lost hunk on alloc error!\n");
   } else {






    *remove = 1;
   }
  }
 }







 return (reverse_seen);
}
