; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_persists_timer_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_persists_timer_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64 }
%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PACE_TMR_PERSIT = common dso_local global i32 0, align 4
@BBR_INITIAL_RTO = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@tcp_backoff = common dso_local global i32* null, align 8
@bbr_persist_min = common dso_local global i32 0, align 4
@bbr_persist_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*)* @bbr_get_persists_timer_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_get_persists_timer_val(%struct.tcpcb* %0, %struct.tcp_bbr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %4, align 8
  %8 = load i32, i32* @PACE_TMR_PERSIT, align 4
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @BBR_INITIAL_RTO, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @TICKS_2_USEC(i64 %24)
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @TICKS_2_USEC(i64 %31)
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32*, i32** @tcp_backoff, align 8
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %40, %46
  %48 = load i32, i32* @bbr_persist_min, align 4
  %49 = load i32, i32* @bbr_persist_max, align 4
  %50 = call i32 @TCPT_RANGESET_NOSLOP(i32 %37, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i64 @TICKS_2_USEC(i64) #1

declare dso_local i32 @TCPT_RANGESET_NOSLOP(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
