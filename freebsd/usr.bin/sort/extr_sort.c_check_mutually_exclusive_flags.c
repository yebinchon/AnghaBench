
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMBER_OF_MUTUALLY_EXCLUSIVE_FLAGS ;
 int errx (int,char*,char,int,int ) ;
 int getstr (int) ;
 int* mutually_exclusive_flags ;

__attribute__((used)) static void
check_mutually_exclusive_flags(char c, bool *mef_flags)
{
 int fo_index, mec;
 bool found_others, found_this;

 found_others = found_this = 0;
 fo_index = 0;

 for (int i = 0; i < NUMBER_OF_MUTUALLY_EXCLUSIVE_FLAGS; i++) {
  mec = mutually_exclusive_flags[i];

  if (mec != c) {
   if (mef_flags[i]) {
    if (found_this)
     errx(1, "%c:%c: %s", c, mec, getstr(1));
    found_others = 1;
    fo_index = i;
   }
  } else {
   if (found_others)
    errx(1, "%c:%c: %s", c, mutually_exclusive_flags[fo_index], getstr(1));
   mef_flags[i] = 1;
   found_this = 1;
  }
 }
}
