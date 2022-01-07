
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_name; int cn_pri; } ;


 int CN_DEAD ;
 int CN_NORMAL ;
 int strlcpy (int ,char*,int) ;
 int ucom_cons_unit ;

__attribute__((used)) static void
ucom_cnprobe(struct consdev *cp)
{
 if (ucom_cons_unit != -1)
  cp->cn_pri = CN_NORMAL;
 else
  cp->cn_pri = CN_DEAD;

 strlcpy(cp->cn_name, "ucom", sizeof(cp->cn_name));
}
