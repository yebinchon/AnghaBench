; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_state = type { i32, i32 }

@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4
@PPS_CANWAIT = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_OFFSETASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@PPS_OFFSETCLEAR = common dso_local global i32 0, align 4
@KCMODE_ABIFLAG = common dso_local global i32 0, align 4
@PPS_TSCLK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pps_init(%struct.pps_state* %0) #0 {
  %2 = alloca %struct.pps_state*, align 8
  store %struct.pps_state* %0, %struct.pps_state** %2, align 8
  %3 = load i32, i32* @PPS_TSFMT_TSPEC, align 4
  %4 = load i32, i32* @PPS_CANWAIT, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %7 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %11 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %18 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %19 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %24 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %31 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %32 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* @KCMODE_ABIFLAG, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %39 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
