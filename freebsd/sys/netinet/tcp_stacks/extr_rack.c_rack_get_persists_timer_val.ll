; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_get_persists_timer_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_get_persists_timer_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i64 }
%struct.tcp_rack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@tcp_backoff = common dso_local global i32* null, align 8
@rack_persist_min = common dso_local global i32 0, align 4
@rack_persist_max = common dso_local global i32 0, align 4
@TCP_MAXRXTSHIFT = common dso_local global i64 0, align 8
@PACE_TMR_PERSIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, %struct.tcp_rack*)* @rack_get_persists_timer_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rack_get_persists_timer_val(%struct.tcpcb* %0, %struct.tcp_rack* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 4
  %17 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = add nsw i32 %12, %18
  %20 = call i32 @TICKS_2_MSEC(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** @tcp_backoff, align 8
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %22, %28
  %30 = load i32, i32* @rack_persist_min, align 4
  %31 = load i32, i32* @rack_persist_max, align 4
  %32 = call i32 @TCPT_RANGESET(i32 %21, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCP_MAXRXTSHIFT, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %38, %2
  %44 = load i32, i32* @PACE_TMR_PERSIT, align 4
  %45 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  ret i64 %52
}

declare dso_local i32 @TICKS_2_MSEC(i32) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
