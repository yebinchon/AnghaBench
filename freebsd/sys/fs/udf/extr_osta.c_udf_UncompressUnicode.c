
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unicode_t ;
typedef int byte ;



int
udf_UncompressUnicode(
 int numberOfBytes,
 byte *UDFCompressed,
 unicode_t *unicode)
{
 unsigned int compID;
 int returnValue, unicodeIndex, byteIndex;


 compID = UDFCompressed[0];


 if (compID != 8 && compID != 16) {
  returnValue = -1;
 } else {
  unicodeIndex = 0;
  byteIndex = 1;


  while (byteIndex < numberOfBytes) {
   if (compID == 16) {



    unicode[unicodeIndex] =
        UDFCompressed[byteIndex++] << 8;
   } else {
    unicode[unicodeIndex] = 0;
   }
   if (byteIndex < numberOfBytes) {

    unicode[unicodeIndex] |=
        UDFCompressed[byteIndex++];
   }
   unicodeIndex++;
  }
  returnValue = unicodeIndex;
 }
 return(returnValue);
}
