; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_cc_after_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_cc_after_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@tcps_idle_estrestarts = common dso_local global i32 0, align 4
@tcps_idle_restarts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @rack_cc_after_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_cc_after_idle(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @INP_WLOCK_ASSERT(i32 %6)
  %8 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %9 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = icmp ne i32 (i32)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %15 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %33 = call i32 @tcp_maxseg(%struct.tcpcb* %32)
  %34 = call i64 @tcp_compute_initwnd(i32 %33)
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %3, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i64, i64* %3, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i64 @tcp_compute_initwnd(i32) #1

declare dso_local i32 @tcp_maxseg(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
