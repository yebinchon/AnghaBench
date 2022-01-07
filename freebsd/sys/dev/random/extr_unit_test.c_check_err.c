
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_OK ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*,int) ;
 int stderr ;

__attribute__((used)) static __inline void
check_err(int err, const char *func)
{
 if (err != Z_OK) {
  fprintf(stderr, "Compress error in %s: %d\n", func, err);
  exit(0);
 }
}
