
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_int ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,int,int,char const*,int,int) ;

__attribute__((used)) static void
printPowerPerRate(FILE *fd, u_int16_t ratesArray[], u_int n)
{
 const char *rateString[] = {
  " 6mb OFDM", " 9mb OFDM", "12mb OFDM", "18mb OFDM",
  "24mb OFDM", "36mb OFDM", "48mb OFDM", "54mb OFDM",
  "1L   CCK ", "2L   CCK ", "2S   CCK ", "5.5L CCK ",
  "5.5S CCK ", "11L  CCK ", "11S  CCK ", "XR       "
 };
 int i, halfRates = n/2;

 for (i = 0; i < halfRates; i++)
  fprintf(fd, " %s %3d.%1d dBm | %s %3d.%1d dBm\n",
    rateString[i], ratesArray[i]/2,
    (ratesArray[i] %2) * 5,
    rateString[i + halfRates],
    ratesArray[i + halfRates]/2,
    (ratesArray[i + halfRates] %2) *5);
}
