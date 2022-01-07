
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int OK ;
 char atoi (int ) ;
 int getopt (int,char**,char*) ;
 int memcpy (char*,int ,int) ;
 int optarg ;
 scalar_t__ optind ;
 int optreset ;
 int strlen (int ) ;
 char* strsep (int *,char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int
parse_param(int argc, char *argv[], char *buf, int *len)
{
 char *buflast = buf + (*len);
 char *curbuf = buf;
 char *token,*lenpos;
 int ch;
 int datalen;
 uint16_t value;
 optreset = 1;
 optind = 0;
 while ((ch = getopt(argc, argv , "n:f:u:")) != -1) {
  switch(ch){
  case 'n':
   datalen = strlen(optarg);
   if ((curbuf + datalen + 2) >= buflast)
    goto done;
   curbuf[0] = datalen + 1;
   curbuf[1] = 8;
   curbuf += 2;
   memcpy(curbuf, optarg, datalen);
   curbuf += datalen;
   break;
  case 'f':
   if (curbuf+3 > buflast)
    goto done;
   curbuf[0] = 2;
   curbuf[1] = 1;
   curbuf[2] = atoi(optarg);
   curbuf += 3;
   break;
  case 'u':
   lenpos = buf;
   if ((buf+2) >= buflast)
    goto done;
   curbuf[1] = 2;
   *lenpos = 1;
   curbuf += 2;
   while ((token = strsep(&optarg, ",")) != ((void*)0)) {
    value = strtol(token, ((void*)0), 16);
    if ((curbuf+2) >= buflast)
     break;
    curbuf[0] = value &0xff;
    curbuf[1] = (value>>8)&0xff;
    curbuf += 2;
   }

  }
 }
done:
 *len = curbuf - buf;

 return OK;
}
