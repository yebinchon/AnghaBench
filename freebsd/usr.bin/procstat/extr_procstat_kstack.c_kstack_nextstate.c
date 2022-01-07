
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum trace_state { ____Placeholder_trace_state } trace_state ;







 int errx (int,char*) ;

__attribute__((used)) static enum trace_state
kstack_nextstate(enum trace_state ts)
{

 switch (ts) {
 case 131:
  return (128);

 case 128:
  return (132);

 case 132:
  return (130);

 case 130:
  return (129);

 case 129:
  return 131;

 default:
  errx(-1, "kstack_nextstate");
 }
}
