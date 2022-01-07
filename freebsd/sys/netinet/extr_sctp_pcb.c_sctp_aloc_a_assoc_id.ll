; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_aloc_a_assoc_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_aloc_a_assoc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32, i64, i32, %struct.sctpasochead* }
%struct.sctpasochead = type { i32 }
%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCTP_PCB_FLAGS_SOCKET_ALLGONE = common dso_local global i32 0, align 4
@SCTP_ALL_ASSOC = common dso_local global i64 0, align 8
@sctp_tcbasocidhash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sctp_inpcb*, %struct.sctp_tcb*)* @sctp_aloc_a_assoc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sctp_aloc_a_assoc_id(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sctp_inpcb*, align 8
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctpasochead*, align 8
  %8 = alloca %struct.sctp_tcb*, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %4, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %5, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_ALLGONE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %61

17:                                               ; preds = %9
  %18 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCTP_ALL_ASSOC, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i64, i64* @SCTP_ALL_ASSOC, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.sctp_tcb* @sctp_findasoc_ep_asocid_locked(%struct.sctp_inpcb* %36, i32 %38, i32 0)
  store %struct.sctp_tcb* %39, %struct.sctp_tcb** %8, align 8
  %40 = load %struct.sctp_tcb*, %struct.sctp_tcb** %8, align 8
  %41 = icmp ne %struct.sctp_tcb* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %9

43:                                               ; preds = %28
  %44 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %44, i32 0, i32 3
  %46 = load %struct.sctpasochead*, %struct.sctpasochead** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @SCTP_PCBHASH_ASOC(i64 %47, i32 %50)
  %52 = getelementptr inbounds %struct.sctpasochead, %struct.sctpasochead* %46, i64 %51
  store %struct.sctpasochead* %52, %struct.sctpasochead** %7, align 8
  %53 = load %struct.sctpasochead*, %struct.sctpasochead** %7, align 8
  %54 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %55 = load i32, i32* @sctp_tcbasocidhash, align 4
  %56 = call i32 @LIST_INSERT_HEAD(%struct.sctpasochead* %53, %struct.sctp_tcb* %54, i32 %55)
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %43, %16
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local %struct.sctp_tcb* @sctp_findasoc_ep_asocid_locked(%struct.sctp_inpcb*, i32, i32) #1

declare dso_local i64 @SCTP_PCBHASH_ASOC(i64, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.sctpasochead*, %struct.sctp_tcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
