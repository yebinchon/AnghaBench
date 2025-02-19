; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wpi_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.wpi_softc* @device_get_softc(i32 %5)
  store %struct.wpi_softc* %6, %struct.wpi_softc** %3, align 8
  %7 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %7, i32 0, i32 0
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %10 = call i32 @ieee80211_suspend_all(%struct.ieee80211com* %9)
  ret i32 0
}

declare dso_local %struct.wpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ieee80211_suspend_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
