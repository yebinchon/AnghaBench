
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_zstate {int dummy; } ;
typedef int code_int ;


 scalar_t__ EOF ;
 scalar_t__ ent ;
 scalar_t__ fclose (int ) ;
 int fp ;
 int free (struct s_zstate*) ;
 int out_count ;
 int output (struct s_zstate*,int ) ;
 char zmode ;

__attribute__((used)) static int
zclose(void *cookie)
{
 struct s_zstate *zs;
 int rval;

 zs = cookie;
 if (zmode == 'w') {
  if (output(zs, (code_int) ent) == -1) {
   (void)fclose(fp);
   free(zs);
   return (-1);
  }
  out_count++;
  if (output(zs, (code_int) - 1) == -1) {
   (void)fclose(fp);
   free(zs);
   return (-1);
  }
 }
 rval = fclose(fp) == EOF ? -1 : 0;
 free(zs);
 return (rval);
}
