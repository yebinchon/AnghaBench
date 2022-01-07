; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_asconf_delete_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_asconf_delete_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_asconf_paramhdr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_tcb = type { i32 }
%union.sctp_sockstore = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }

@SCTP_CAUSE_UNRESOLVABLE_ADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SCTP_CAUSE_DELETING_LAST_ADDR = common dso_local global i32 0, align 4
@SCTP_CAUSE_DELETING_SRC_ADDR = common dso_local global i32 0, align 4
@SCTP_CAUSE_REQUEST_REFUSED = common dso_local global i32 0, align 4
@SCTP_DEBUG_ASCONF1 = common dso_local global i32 0, align 4
@SCTP_NOTIFY_ASCONF_DELETE_IP = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@sctp_nat_friendly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.sockaddr*, %struct.sctp_asconf_paramhdr*, %struct.sctp_tcb*, i32)* @sctp_process_asconf_delete_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @sctp_process_asconf_delete_ip(%struct.sockaddr* %0, %struct.sctp_asconf_paramhdr* %1, %struct.sctp_tcb* %2, i32 %3) #0 {
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
  %17 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sctp_asconf_paramhdr* %1, %struct.sctp_asconf_paramhdr** %7, align 8
  store %struct.sctp_tcb* %2, %struct.sctp_tcb** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %19 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %47

27:                                               ; preds = %4
  %28 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %28, i64 1
  %30 = bitcast %struct.sctp_asconf_paramhdr* %29 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %30, %struct.sctp_paramhdr** %12, align 8
  %31 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %12, align 8
  %32 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = bitcast %union.sctp_sockstore* %11 to %struct.sockaddr*
  store %struct.sockaddr* %35, %struct.sockaddr** %15, align 8
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %37 [
  ]

37:                                               ; preds = %27
  %38 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %39 = getelementptr inbounds %struct.sctp_asconf_paramhdr, %struct.sctp_asconf_paramhdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SCTP_CAUSE_UNRESOLVABLE_ADDR, align 4
  %42 = load %struct.sctp_asconf_paramhdr*, %struct.sctp_asconf_paramhdr** %7, align 8
  %43 = bitcast %struct.sctp_asconf_paramhdr* %42 to i32*
  %44 = load i32, i32* %14, align 4
  %45 = call %struct.mbuf* @sctp_asconf_error_response(i32 %40, i32 %41, i32* %43, i32 %44)
  store %struct.mbuf* %45, %struct.mbuf** %10, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %46, %struct.mbuf** %5, align 8
  br label %47

47:                                               ; preds = %37, %26
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %48
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @sctp_asconf_error_response(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
