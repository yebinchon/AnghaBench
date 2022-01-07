
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isonum_711 (unsigned char*) ;
 int isonum_712 (char*) ;
 int isonum_721 (unsigned char*) ;
 int isonum_722 (unsigned char*) ;
 int isonum_723 (unsigned char*) ;
 int isonum_731 (unsigned char*) ;
 int isonum_732 (unsigned char*) ;
 int isonum_733 (unsigned char*) ;

int
debug_get_encoded_number(unsigned char* buf, int mode)
{

 switch (mode) {

 case 711:
  return isonum_711(buf);


 case 712:
  return isonum_712((signed char *)buf);


 case 721:
  return isonum_721(buf);


 case 731:
  return isonum_731(buf);


 case 722:
  return isonum_722(buf);


 case 732:
  return isonum_732(buf);


 case 723:
  return isonum_723(buf);


 case 733:
  return isonum_733(buf);
 }

 return 0;
}
