; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_cc_cong_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_cc_cong_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TF_ECN_PERMIT = common dso_local global i32 0, align 4
@TF_ECN_SND_CWR = common dso_local global i32 0, align 4
@TF_PREVVALID = common dso_local global i32 0, align 4
@TF_WASCRECOVERY = common dso_local global i32 0, align 4
@TF_WASFRECOVERY = common dso_local global i32 0, align 4
@tcps_ecn_rcwnd = common dso_local global i32 0, align 4
@tcps_sndrexmitbad = common dso_local global i32 0, align 4

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
