
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char revision; char* eisaid; char* serial; char* class; char* compat; char* description; int neisaid; int nserial; int nclass; int ncompat; int ndescription; } ;
typedef TYPE_1__ pnpid_t ;


 int FALSE ;
 int TRUE ;
 int debug (char*,int,...) ;
 int logwarnx (char*,int ) ;
 int sprintf (char*,char*,int) ;
 void* strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
pnpparse(pnpid_t *id, char *buf, int len)
{
    char s[3];
    int offset;
    int sum = 0;
    int i, j;

    id->revision = 0;
    id->eisaid = ((void*)0);
    id->serial = ((void*)0);
    id->class = ((void*)0);
    id->compat = ((void*)0);
    id->description = ((void*)0);
    id->neisaid = 0;
    id->nserial = 0;
    id->nclass = 0;
    id->ncompat = 0;
    id->ndescription = 0;

    if ((buf[0] != 0x28) && (buf[0] != 0x08)) {

 switch(buf[0]) {
 default:
     return (FALSE);
 case 'M':
     id->eisaid = "PNP0F01";
     break;
 case 'H':
     id->eisaid = "PNP0F04";
     break;
 }
 id->neisaid = strlen(id->eisaid);
 id->class = "MOUSE";
 id->nclass = strlen(id->class);
 debug("non-PnP mouse '%c'", buf[0]);
 return (TRUE);
    }


    offset = 0x28 - buf[0];


    for (i = 0; i < len - 3; ++i) {
 sum += buf[i];
 buf[i] += offset;
    }
    sum += buf[len - 1];
    for (; i < len; ++i)
 buf[i] += offset;
    debug("PnP ID string: '%*.*s'", len, len, buf);


    buf[1] -= offset;
    buf[2] -= offset;
    id->revision = ((buf[1] & 0x3f) << 6) | (buf[2] & 0x3f);
    debug("PnP rev %d.%02d", id->revision / 100, id->revision % 100);


    id->eisaid = &buf[3];
    id->neisaid = 7;


    i = 10;
    if (buf[i] == '\\') {

 for (j = ++i; i < len; ++i) {
     if (buf[i] == '\\')
  break;
 }
 if (i >= len)
     i -= 3;
 if (i - j == 8) {
     id->serial = &buf[j];
     id->nserial = 8;
 }
    }
    if (buf[i] == '\\') {

 for (j = ++i; i < len; ++i) {
     if (buf[i] == '\\')
  break;
 }
 if (i >= len)
     i -= 3;
 if (i > j + 1) {
     id->class = &buf[j];
     id->nclass = i - j;
 }
    }
    if (buf[i] == '\\') {

 for (j = ++i; i < len; ++i) {
     if (buf[i] == '\\')
  break;
 }




 if (buf[j] == '*')
     ++j;
 if (i >= len)
     i -= 3;
 if (i > j + 1) {
     id->compat = &buf[j];
     id->ncompat = i - j;
 }
    }
    if (buf[i] == '\\') {

 for (j = ++i; i < len; ++i) {
     if (buf[i] == ';')
  break;
 }
 if (i >= len)
     i -= 3;
 if (i > j + 1) {
     id->description = &buf[j];
     id->ndescription = i - j;
 }
    }


    if ((id->nserial > 0) || (id->nclass > 0)
 || (id->ncompat > 0) || (id->ndescription > 0)) {
 debug("PnP checksum: 0x%X", sum);
 sprintf(s, "%02X", sum & 0x0ff);
 if (strncmp(s, &buf[len - 3], 2) != 0) {
 }
    }

    return (TRUE);
}
