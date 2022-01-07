; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_get_timecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_get_timecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { %struct.fire_softc* }
%struct.fire_softc = type { i32 }

@FO_XBC_PRF_CNT0 = common dso_local global i32 0, align 4
@TC_COUNTER_MAX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timecounter*)* @fire_get_timecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_get_timecount(%struct.timecounter* %0) #0 {
  %2 = alloca %struct.timecounter*, align 8
  %3 = alloca %struct.fire_softc*, align 8
  store %struct.timecounter* %0, %struct.timecounter** %2, align 8
  %4 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %5 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %4, i32 0, i32 0
  %6 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  store %struct.fire_softc* %6, %struct.fire_softc** %3, align 8
  %7 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %8 = load i32, i32* @FO_XBC_PRF_CNT0, align 4
  %9 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %7, i32 %8)
  %10 = load i32, i32* @TC_COUNTER_MAX_MASK, align 4
  %11 = and i32 %9, %10
  ret i32 %11
}

declare dso_local i32 @FIRE_CTRL_READ_8(%struct.fire_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
