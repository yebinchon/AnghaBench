; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_calib.c_rtwn_calib_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_calib.c_rtwn_calib_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i64, i32 }
%union.sec_param = type { i32 }

@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@rtwn_calib_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %union.sec_param*)* @rtwn_calib_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_calib_cb(%struct.rtwn_softc* %0, %union.sec_param* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %union.sec_param*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %union.sec_param* %1, %union.sec_param** %4, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %6 = call i32 @rtwn_temp_calib(%struct.rtwn_softc* %5)
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = call i32 @rtwn_set_rssi(%struct.rtwn_softc* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 3
  %26 = load i32, i32* @hz, align 4
  %27 = mul nsw i32 2, %26
  %28 = load i32, i32* @rtwn_calib_to, align 4
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %30 = call i32 @callout_reset(i32* %25, i32 %27, i32 %28, %struct.rtwn_softc* %29)
  br label %31

31:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @rtwn_temp_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_rssi(%struct.rtwn_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
