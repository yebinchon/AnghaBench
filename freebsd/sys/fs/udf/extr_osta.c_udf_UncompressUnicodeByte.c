
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int byte ;



int
udf_UncompressUnicodeByte(
 int numberOfBytes,
 byte *UDFCompressed,
 byte *unicode)
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



    unicode[unicodeIndex++] =
        UDFCompressed[byteIndex++];
   } else {
    unicode[unicodeIndex++] = 0;
   }
   if (byteIndex < numberOfBytes) {

    unicode[unicodeIndex++] =
        UDFCompressed[byteIndex++];
   }
  }
  returnValue = unicodeIndex;
 }
 return(returnValue);
}
