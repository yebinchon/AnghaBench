
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {scalar_t__* GuessTable; size_t Hash; } ;


 int HASH (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
Pred1Compress(node_p node, u_char *source, u_char *dest, int len)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int i;
 u_char flags;
 u_char *flagdest, *orgdest;

 orgdest = dest;
 while (len) {
  flagdest = dest++;
  flags = 0;
  for (i = 0; i < 8 && len; i++) {
       if (priv->GuessTable[priv->Hash] == *source)

    flags |= (1 << i);
       else {

    priv->GuessTable[priv->Hash] = *source;
    *dest++ = *source;
       }
       HASH(*source++);
       len--;
  }
  *flagdest = flags;
 }
 return (dest - orgdest);
}
