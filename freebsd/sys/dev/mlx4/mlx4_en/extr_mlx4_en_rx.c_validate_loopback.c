
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_priv {int loopback_ok; } ;
struct mbuf {unsigned char* m_data; } ;


 int ETHER_HDR_LEN ;
 int MLX4_LOOPBACK_TEST_PAYLOAD ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void validate_loopback(struct mlx4_en_priv *priv, struct mbuf *mb)
{
 int i;
 int offset = ETHER_HDR_LEN;

 for (i = 0; i < MLX4_LOOPBACK_TEST_PAYLOAD; i++, offset++) {
  if (*(mb->m_data + offset) != (unsigned char) (i & 0xff))
   goto out_loopback;
 }

 priv->loopback_ok = 1;

out_loopback:
 m_freem(mb);
}
