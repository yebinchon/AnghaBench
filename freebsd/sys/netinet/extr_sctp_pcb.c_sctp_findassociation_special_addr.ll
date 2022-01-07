; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_findassociation_special_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_findassociation_special_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.mbuf = type { i32 }
%struct.sctphdr = type { i32 }
%struct.sctp_inpcb = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SCTP_IPV4_ADDRESS = common dso_local global i64 0, align 8
@SCTP_IPV6_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_tcb* (%struct.mbuf*, i32, %struct.sctphdr*, %struct.sctp_inpcb**, %struct.sctp_nets**, %struct.sockaddr*)* @sctp_findassociation_special_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_tcb* @sctp_findassociation_special_addr(%struct.mbuf* %0, i32 %1, %struct.sctphdr* %2, %struct.sctp_inpcb** %3, %struct.sctp_nets** %4, %struct.sockaddr* %5) #0 {
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctphdr*, align 8
  %10 = alloca %struct.sctp_inpcb**, align 8
  %11 = alloca %struct.sctp_nets**, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sctp_paramhdr*, align 8
  %14 = alloca %struct.sctp_paramhdr, align 4
  %15 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sctphdr* %2, %struct.sctphdr** %9, align 8
  store %struct.sctp_inpcb** %3, %struct.sctp_inpcb*** %10, align 8
  store %struct.sctp_nets** %4, %struct.sctp_nets*** %11, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf* %20, i32 %21, %struct.sctp_paramhdr* %14, i32 8)
  store %struct.sctp_paramhdr* %22, %struct.sctp_paramhdr** %13, align 8
  br label %23

23:                                               ; preds = %34, %6
  %24 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %25 = icmp ne %struct.sctp_paramhdr* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %28 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ntohs(i32 %29)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %44

34:                                               ; preds = %26
  %35 = load i64, i64* %15, align 8
  %36 = call i64 @SCTP_SIZE32(i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf* %41, i32 %42, %struct.sctp_paramhdr* %14, i32 8)
  store %struct.sctp_paramhdr* %43, %struct.sctp_paramhdr** %13, align 8
  br label %23

44:                                               ; preds = %33, %23
  ret %struct.sctp_tcb* null
}

declare dso_local %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf*, i32, %struct.sctp_paramhdr*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @SCTP_SIZE32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
