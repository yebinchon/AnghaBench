
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockd_ans {int la_vers; } ;


 int devfd ;
 scalar_t__ write (int ,struct lockd_ans*,int) ;

__attribute__((used)) static int
nfslockdans(int vers, struct lockd_ans *ansp)
{

 ansp->la_vers = vers;
 return (write(devfd, ansp, sizeof *ansp) <= 0);
}
