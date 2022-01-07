
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPASS (int) ;
 int TDF_SBDRY ;
 int TDF_SEINTR ;
 int TDF_SERESTART ;

__attribute__((used)) static int
sigdeferstop_curr_flags(int cflags)
{

 MPASS((cflags & (TDF_SEINTR | TDF_SERESTART)) == 0 ||
     (cflags & TDF_SBDRY) != 0);
 return (cflags & (TDF_SBDRY | TDF_SEINTR | TDF_SERESTART));
}
