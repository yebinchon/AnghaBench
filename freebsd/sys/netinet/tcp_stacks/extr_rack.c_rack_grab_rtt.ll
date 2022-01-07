; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_grab_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_grab_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_rack = type { i64 }

@RACK_INITIAL_RTO = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, %struct.tcp_rack*)* @rack_grab_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rack_grab_rtt(%struct.tcpcb* %0, %struct.tcp_rack* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcp_rack*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %5, align 8
  %6 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %7 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @RACK_INITIAL_RTO, align 8
  store i64 %20, i64* %3, align 8
  br label %29

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = call i64 @TICKS_2_MSEC(i32 %27)
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %22, %19, %10
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @TICKS_2_MSEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
