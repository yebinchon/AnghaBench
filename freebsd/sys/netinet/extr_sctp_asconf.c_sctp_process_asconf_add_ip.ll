; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_asconf_add_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_asconf_add_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_asconf_paramhdr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_tcb = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_nets = type { i32 }
%union.sctp_sockstore = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }

@SCTP_CAUSE_INVALID_PARAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@SCTP_ADDR_DYNAMIC_ADDED = common dso_local global i32 0, align 4
@SCTP_CAUSE_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@SCTP_DEBUG_ASCONF1 = common dso_local global i32 0, align 4
@SCTP_DONOT_SETSCOPE = common dso_local global i32 0, align 4
@SCTP_NOTIFY_ASCONF_ADD_IP = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_HEARTBEAT = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_PATHMTURAISE = common dso_local global i32 0, align 4
@sctp_nat_friendly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.sockaddr*, %struct.sctp_asconf_paramhdr*, %struct.sctp_tcb*, i32, i32)* @sctp_process_asconf_add_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @sctp_process_asconf_add_ip(%struct.sockaddr* %0, %struct.sctp_asconf_paramhdr* %1, %struct.sctp_tcb* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sctp_asconf_paramhdr*, align 8
  %9 = alloca %struct.sctp_tcb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_nets*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %union.sctp_sockstore, align 4
  %15 = alloca %struct.sctp_paramhdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %7, align 8
  store %struct.sctp_asconf_paramhdr* %1, %struct.sctp_asconf_paramhdr** %8, align 8
  store %struct.sctp_tcb* %2, %struct.sctp_tcb** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 16
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %50

30:                                               ; preds = %5
  %31 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %8, align 8
  %32 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %31, i64 1
  %33 = bitcast %struct.sctp_asconf_paramhdr* %32 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %33, %struct.sctp_paramhdr** %15, align 8
  %34 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %15, align 8
  %35 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = bitcast %union.sctp_sockstore* %14 to %struct.sockaddr*
  store %struct.sockaddr* %38, %struct.sockaddr** %18, align 8
  %39 = load i32, i32* %16, align 4
  switch i32 %39, label %40 [
  ]

40:                                               ; preds = %30
  %41 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %8, align 8
  %42 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SCTP_CAUSE_INVALID_PARAM, align 4
  %45 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %8, align 8
  %46 = bitcast %struct.sctp_asconf_paramhdr* %45 to i32*
  %47 = load i32, i32* %17, align 4
  %48 = call %struct.mbuf* @sctp_asconf_error_response(i32 %43, i32 %44, i32* %46, i32 %47)
  store %struct.mbuf* %48, %struct.mbuf** %13, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %49, %struct.mbuf** %6, align 8
  br label %50

50:                                               ; preds = %40, %29
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %51
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @sctp_asconf_error_response(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
