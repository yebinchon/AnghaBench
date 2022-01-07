
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mz_header {char* mz_signature; int mz_lfanew; } ;
struct executable {scalar_t__ x_buf; } ;


 int errx (int,char*) ;
 void parse_pe (struct executable*,int ) ;
 int range_check (struct executable*,int ,int,char*) ;

void
parse(struct executable *x)
{
 const struct mz_header *mz;

 range_check(x, 0, sizeof(*mz), "MZ header");

 mz = (struct mz_header *)x->x_buf;
 if (mz->mz_signature[0] != 'M' || mz->mz_signature[1] != 'Z')
  errx(1, "MZ header not found");

 return (parse_pe(x, mz->mz_lfanew));
}
