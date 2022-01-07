
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int t ;
typedef scalar_t__ caddr_t ;
typedef int BF_LONG ;
typedef int BF_KEY ;


 int BF_encrypt (int *,int *) ;
 int htonl (int ) ;
 int memcpy (int *,int *,int) ;
 int ntohl (int ) ;

__attribute__((used)) static void
blf_encrypt(caddr_t key, u_int8_t *blk)
{
 BF_LONG t[2];

 memcpy(t, blk, sizeof (t));
 t[0] = ntohl(t[0]);
 t[1] = ntohl(t[1]);

 BF_encrypt(t, (BF_KEY *) key);
 t[0] = htonl(t[0]);
 t[1] = htonl(t[1]);
 memcpy(blk, t, sizeof (t));
}
