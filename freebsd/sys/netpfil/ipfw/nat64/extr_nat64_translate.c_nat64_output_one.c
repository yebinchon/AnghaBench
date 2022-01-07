
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64_counters {int dummy; } ;
struct mbuf {int dummy; } ;


 int nat64_output (int *,struct mbuf*,int *,struct nat64_counters*,void*) ;

__attribute__((used)) static int
nat64_output_one(struct mbuf *m, struct nat64_counters *stats, void *logdata)
{

 return (nat64_output(((void*)0), m, ((void*)0), stats, logdata));
}
