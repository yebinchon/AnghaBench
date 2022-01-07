
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kind; } ;
typedef TYPE_1__ token ;



 int error (char*) ;
 int get_token (TYPE_1__*) ;

void
scan_num(token *tokp)
{
 get_token(tokp);
 switch (tokp->kind) {
 case 128:
  break;
 default:
  error("constant or identifier expected");
 }
}
