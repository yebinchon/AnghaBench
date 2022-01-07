
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_type; int v_value; scalar_t__ v_name; } ;
typedef TYPE_1__ value_t ;






 int TMASK ;
 int VIS_WHITE ;
 int abort () ;
 int boolean (int ) ;
 int character (int ) ;
 int fprintf (int ,char*) ;
 int fputs (scalar_t__,int ) ;
 int free (char*) ;
 char* malloc (int) ;
 char* number (int ) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int puts (char*) ;
 int stderr ;
 int stdout ;
 int strlen (int ) ;
 int strvis (char*,int ,int ) ;
 int vis (char*,int ,int ,int ) ;
 TYPE_1__* vtable ;

void
listvariables(int c)
{
 value_t *p;
 char *buf;
 char charbuf[5];

 puts("v\r");
 for (p = vtable; p->v_name; p++) {
  fputs(p->v_name, stdout);
  switch (p->v_type&TMASK) {
  case 128:
   if (p->v_value) {
    buf = malloc(4*strlen(p->v_value) + 1);
    if (buf == ((void*)0)) {
     fprintf(stderr, "Unable to malloc()\n");
     abort();
    }
    strvis(buf, p->v_value, VIS_WHITE);
    printf(" %s", buf);
    free(buf);
   }
   putchar('\r');
   putchar('\n');
   break;
  case 129:
   printf(" %ld\r\n", number(p->v_value));
   break;
  case 131:
   printf(" %s\r\n",
       !boolean(p->v_value) ? "false" : "true");
   break;
  case 130:
   vis(charbuf, character(p->v_value), VIS_WHITE, 0);
   printf(" %s\r\n", charbuf);
   break;
  }
 }
}
