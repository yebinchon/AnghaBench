
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fputs (char*,int ) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fputs(
"Usage: cal [general options] [-hjy] [[month] year]\n"
"       cal [general options] [-hj] [-m month] [year]\n"
"       ncal [general options] [-hJjpwy] [-s country_code] [[month] year]\n"
"       ncal [general options] [-hJeo] [year]\n"
"General options: [-NC3] [-A months] [-B months]\n"
"For debug the highlighting: [-H yyyy-mm-dd] [-d yyyy-mm]\n",
     stderr);
 exit(EX_USAGE);
}
