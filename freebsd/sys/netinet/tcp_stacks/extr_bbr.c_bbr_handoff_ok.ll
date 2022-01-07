; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_handoff_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_handoff_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32 }

@TCPS_CLOSED = common dso_local global i64 0, align 8
@TCPS_LISTEN = common dso_local global i64 0, align 8
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TCPS_SYN_RECEIVED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@bbr_sack_not_required = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*)* @bbr_handoff_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_handoff_ok(%struct.tcpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TCPS_CLOSED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCPS_LISTEN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %43

16:                                               ; preds = %9
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCPS_SYN_SENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCPS_SYN_RECEIVED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @EAGAIN, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %22
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TF_SACK_PERMIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* @bbr_sack_not_required, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %30
  store i32 0, i32* %2, align 4
  br label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %40, %28, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
