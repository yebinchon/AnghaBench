
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* CBEGIN ;
 unsigned char* CINTOK ;
 unsigned char* CNOTGD ;
 unsigned char* CTOKEN ;
 unsigned char* CWHITE ;
 void* NO ;
 void* YES ;
 void** _btk ;
 void** _etk ;
 void** _gd ;
 void** _itk ;
 void** _wht ;

void
init(void)
{
 int i;
 const unsigned char *sp;

 for (i = 0; i < 256; i++) {
  _wht[i] = _etk[i] = _itk[i] = _btk[i] = NO;
  _gd[i] = YES;
 }

 for (sp = " \f\t\n"; *sp; sp++)
  _wht[*sp] = YES;

 for (sp = " \t\n\"'#()[]{}=-+%*/&|^~!<>;,.:?"; *sp; sp++)
  _etk[*sp] = YES;

 for (sp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz0123456789"; *sp; sp++)
  _itk[*sp] = YES;

 for (sp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"; *sp; sp++)
  _btk[*sp] = YES;

 for (sp = ",;"; *sp; sp++)
  _gd[*sp] = NO;
}
