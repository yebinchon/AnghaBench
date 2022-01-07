
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* STR (int ) ;
 int USAGE ;
 int do_sdp_search (void*,int,char**) ;

__attribute__((used)) static int
do_sdp_browse(void *xs, int argc, char **argv)
{





 static char const * const av[] = {
  "128",
  ((void*)0)
 };

 switch (argc) {
 case 0:
  argc = 1;
  argv = (char **) av;

 case 1:
  return (do_sdp_search(xs, argc, argv));
 }

 return (USAGE);
}
