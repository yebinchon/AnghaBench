
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kind; } ;
typedef TYPE_1__ token ;







 int get_token (TYPE_1__*) ;
 int peek (TYPE_1__*) ;
 int peekscan (int,TYPE_1__*) ;

__attribute__((used)) static void
unsigned_dec(const char **typep)
{
 token tok;

 peek(&tok);
 switch (tok.kind) {
 case 132:
  get_token(&tok);
  *typep = "u_char";
  break;
 case 128:
  get_token(&tok);
  *typep = "u_short";
  (void) peekscan(130, &tok);
  break;
 case 129:
  get_token(&tok);
  *typep = "u_long";
  (void) peekscan(130, &tok);
  break;
 case 131:
  get_token(&tok);
  *typep = "u_int64_t";

  (void) peekscan(130, &tok);
  break;
 case 130:
  get_token(&tok);
  *typep = "u_int";
  break;
 default:
  *typep = "u_int";
  break;
 }
}
