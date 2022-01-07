
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 int ICONV_GET_DISCARD_ILSEQ ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char*) ;
 scalar_t__ iconvctl (scalar_t__,int ,int*) ;

__attribute__((used)) static int
ctl_get_discard_ilseq1(void)
{
 iconv_t cd;
        int arg, ret;

 cd = iconv_open("ASCII", "UTF-8");
 if (cd == (iconv_t)-1)
  return (-1);
 if (iconvctl(cd, ICONV_GET_DISCARD_ILSEQ, &arg) == 0)
  ret = arg == 0 ? 0 : -1;
 else
  ret = -1;
 if (iconv_close(cd) == -1)
  return (-1);
 return (ret);
}
