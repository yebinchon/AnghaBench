
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unicode_t ;
typedef int byte ;



int
udf_CompressUnicode(
 int numberOfChars,
 int compID,
 unicode_t *unicode,
 byte *UDFCompressed)
{
 int byteIndex, unicodeIndex;

 if (compID != 8 && compID != 16) {
  byteIndex = -1;
 } else {

  UDFCompressed[0] = compID;

  byteIndex = 1;
  unicodeIndex = 0;
  while (unicodeIndex < numberOfChars) {
   if (compID == 16) {



    UDFCompressed[byteIndex++] =
        (unicode[unicodeIndex] & 0xFF00) >> 8;
   }

   UDFCompressed[byteIndex++] =
       unicode[unicodeIndex] & 0x00FF;
   unicodeIndex++;
  }
 }
 return(byteIndex);
}
