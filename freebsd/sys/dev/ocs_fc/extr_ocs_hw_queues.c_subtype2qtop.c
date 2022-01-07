
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tok_subtype_e ;
typedef int ocs_hw_qtop_entry_e ;


 int QTOP_CQ ;
 int QTOP_EQ ;
 int QTOP_MQ ;
 int QTOP_RQ ;
 int QTOP_WQ ;






__attribute__((used)) static ocs_hw_qtop_entry_e
subtype2qtop(tok_subtype_e q)
{
 switch(q) {
 case 131: return QTOP_EQ;
 case 132: return QTOP_CQ;
 case 129: return QTOP_RQ;
 case 130: return QTOP_MQ;
 case 128: return QTOP_WQ;
 default:
  break;
 }
 return 0;
}
