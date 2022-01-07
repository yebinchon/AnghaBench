; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_scan_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwi_softc* }
%struct.iwi_softc = type { i64, i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@IWI_FLAG_CHANNEL_SCAN = common dso_local global i32 0, align 4
@IWI_FW_SCANNING = common dso_local global i64 0, align 8
@IWI_CMD_ABORT_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @iwi_scan_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_scan_end(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  store %struct.iwi_softc* %6, %struct.iwi_softc** %3, align 8
  %7 = load i32, i32* @IWI_LOCK_DECL, align 4
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %9 = call i32 @IWI_LOCK(%struct.iwi_softc* %8)
  %10 = load i32, i32* @IWI_FLAG_CHANNEL_SCAN, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IWI_FW_SCANNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %23 = load i32, i32* @IWI_CMD_ABORT_SCAN, align 4
  %24 = call i32 @iwi_cmd(%struct.iwi_softc* %22, i32 %23, i32* null, i32 0)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %27 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %26)
  ret void
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, i32*, i32) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
