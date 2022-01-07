; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_asconf_set_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_asconf_set_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_asconf_paramhdr = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_tcb = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }
%union.sctp_sockstore = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }

@SCTP_CAUSE_UNRESOLVABLE_ADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SCTP_ADDR_PF = common dso_local global i32 0, align 4
@SCTP_ADDR_REACHABLE = common dso_local global i32 0, align 4
@SCTP_ADDR_UNCONFIRMED = common dso_local global i32 0, align 4
@SCTP_DEBUG_ASCONF1 = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_ASCONF = common dso_local global i64 0, align 8
@SCTP_LOC_1 = common dso_local global i64 0, align 8
@SCTP_MOBILITY_BASE = common dso_local global i32 0, align 4
@SCTP_MOBILITY_FASTHANDOFF = common dso_local global i32 0, align 4
@SCTP_MOBILITY_PRIM_DELETED = common dso_local global i32 0, align 4
@SCTP_NOTIFY_ASCONF_SET_PRIMARY = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_PRIM_DELETED = common dso_local global i32 0, align 4
@sctp_nat_friendly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.sockaddr*, %struct.sctp_asconf_paramhdr*, %struct.sctp_tcb*, i32)* @sctp_process_asconf_set_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @sctp_process_asconf_set_primary(%struct.sockaddr* %0, %struct.sctp_asconf_paramhdr* %1, %struct.sctp_tcb* %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sctp_asconf_paramhdr*, align 8
  %8 = alloca %struct.sctp_tcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %union.sctp_sockstore, align 4
  %12 = alloca %struct.sctp_paramhdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sctp_asconf_paramhdr* %1, %struct.sctp_asconf_paramhdr** %7, align 8
  store %struct.sctp_tcb* %2, %struct.sctp_tcb** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %46

26:                                               ; preds = %4
  %27 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %28 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %27, i64 1
  %29 = bitcast %struct.sctp_asconf_paramhdr* %28 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %29, %struct.sctp_paramhdr** %12, align 8
  %30 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %12, align 8
  %31 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = bitcast %union.sctp_sockstore* %11 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %15, align 8
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %36 [
  ]

36:                                               ; preds = %26
  %37 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SCTP_CAUSE_UNRESOLVABLE_ADDR, align 4
  %41 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %42 = bitcast %struct.sctp_asconf_paramhdr* %41 to i32*
  %43 = load i32, i32* %14, align 4
  %44 = call %struct.mbuf* @sctp_asconf_error_response(i32 %39, i32 %40, i32* %42, i32 %43)
  store %struct.mbuf* %44, %struct.mbuf** %10, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %45, %struct.mbuf** %5, align 8
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %47
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @sctp_asconf_error_response(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
