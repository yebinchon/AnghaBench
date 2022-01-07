
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipqbucket {int dummy; } ;
struct ipq {int ipq_nfrags; } ;


 int IPSTAT_ADD (int ,int ) ;
 int ipq_free (struct ipqbucket*,struct ipq*) ;
 int ips_fragtimeout ;

__attribute__((used)) static inline void
ipq_timeout(struct ipqbucket *bucket, struct ipq *fp)
{

 IPSTAT_ADD(ips_fragtimeout, fp->ipq_nfrags);
 ipq_free(bucket, fp);
}
