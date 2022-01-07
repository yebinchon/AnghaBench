
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;





 int MAXPATHLEN ;
 char* _MP_DB ;
 char* _SMP_DB ;
 int clean ;
 char* pname ;
 char* prefix ;
 int snprintf (char*,int,char*,char*,...) ;
 int unlink (char*) ;

void
cleanup(void)
{
 char buf[MAXPATHLEN];

 switch(clean) {
 case 129:
  (void)snprintf(buf, sizeof(buf), "%s.orig", pname);
  (void)unlink(buf);

 case 128:
  (void)snprintf(buf, sizeof(buf), "%s/%s.tmp", prefix, _SMP_DB);
  (void)unlink(buf);

 case 130:
  (void)snprintf(buf, sizeof(buf), "%s/%s.tmp", prefix, _MP_DB);
  (void)unlink(buf);
 }
}
