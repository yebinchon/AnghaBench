; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_rack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_rack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64 }
%struct.tcp_bbr = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32*, i32 }

@bbr_to_tot = common dso_local global i32 0, align 4
@BBR_TO_FRM_RACK = common dso_local global i32 0, align 4
@bbr_policer_call_from_rack_to = common dso_local global i64 0, align 8
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, i64)* @bbr_timeout_rack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_timeout_rack(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %86

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @TSTMP_LT(i64 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %86

23:                                               ; preds = %14
  %24 = load i32, i32* @bbr_to_tot, align 4
  %25 = call i32 @BBR_STAT_INC(i32 %24)
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %44 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %45 = call i32 @bbr_set_state(%struct.tcpcb* %43, %struct.tcp_bbr* %44, i32 0)
  br label %46

46:                                               ; preds = %42, %34, %23
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @BBR_TO_FRM_RACK, align 4
  %50 = call i32 @bbr_log_to_event(%struct.tcp_bbr* %47, i64 %48, i32 %49)
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32* @bbr_check_recovery_mode(%struct.tcpcb* %57, %struct.tcp_bbr* %58, i64 %59)
  %61 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %62 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32* %60, i32** %63, align 8
  br label %64

64:                                               ; preds = %56, %46
  %65 = load i64, i64* @bbr_policer_call_from_rack_to, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp sgt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @bbr_lt_bw_sampling(%struct.tcp_bbr* %68, i64 %69, i32 %76)
  br label %78

78:                                               ; preds = %67, %64
  %79 = load i32, i32* @PACE_TMR_RACK, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %78, %22, %13
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @TSTMP_LT(i64, i32) #1

declare dso_local i32 @BBR_STAT_INC(i32) #1

declare dso_local i32 @bbr_set_state(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_log_to_event(%struct.tcp_bbr*, i64, i32) #1

declare dso_local i32* @bbr_check_recovery_mode(%struct.tcpcb*, %struct.tcp_bbr*, i64) #1

declare dso_local i32 @bbr_lt_bw_sampling(%struct.tcp_bbr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
