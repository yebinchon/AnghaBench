
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int panic (char*) ;

__attribute__((used)) static void
plonk(int tok)
{
    panic((tok == EOF) ? "incomplete time"
         : "garbled time");
}
