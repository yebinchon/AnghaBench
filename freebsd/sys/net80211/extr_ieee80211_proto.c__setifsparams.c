
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wmeParams {int wmep_txopLimit; int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; } ;
struct TYPE_3__ {int txopLimit; int logcwmax; int logcwmin; int aifsn; } ;
typedef TYPE_1__ paramType ;



__attribute__((used)) static void
_setifsparams(struct wmeParams *wmep, const paramType *phy)
{
 wmep->wmep_aifsn = phy->aifsn;
 wmep->wmep_logcwmin = phy->logcwmin;
 wmep->wmep_logcwmax = phy->logcwmax;
 wmep->wmep_txopLimit = phy->txopLimit;
}
