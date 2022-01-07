
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int* GuessTable; size_t Hash; } ;


 int HASH (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
Pred1Decompress(node_p node, u_char *source, u_char *dest, int slen, int dlen)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int i;
 u_char flags, *orgdest;

 orgdest = dest;
 while (slen) {
  flags = *source++;
  slen--;
  for (i = 0; i < 8; i++, flags >>= 1) {
   if (dlen <= 0)
    return(-1);
   if (flags & 0x01)

    *dest = priv->GuessTable[priv->Hash];
   else {
    if (!slen)

     break;


    priv->GuessTable[priv->Hash] = *source;

    *dest = *source++;
    slen--;
   }
   HASH(*dest++);
   dlen--;
  }
 }
 return (dest - orgdest);
}
