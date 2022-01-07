
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_mnt {int dummy; } ;


 int M_WAITOK ;
 int bcmp (char*,char*,int) ;
 int udf_transname (char*,char*,int,struct udf_mnt*) ;
 int udf_zone_trans ;
 char* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,char*) ;

__attribute__((used)) static int
udf_cmpname(char *cs0string, char *cmpname, int cs0len, int cmplen, struct udf_mnt *udfmp)
{
 char *transname;
 int error = 0;


 transname = uma_zalloc(udf_zone_trans, M_WAITOK);

 cs0len = udf_transname(cs0string, transname, cs0len, udfmp);


 if ((cs0len == 0) || (cs0len != cmplen))
  error = -1;
 else
  error = bcmp(transname, cmpname, cmplen);

 uma_zfree(udf_zone_trans, transname);
 return (error);
}
