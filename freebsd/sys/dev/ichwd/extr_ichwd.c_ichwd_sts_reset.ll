; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_sts_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_sts_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32 }

@TCO1_STS = common dso_local global i32 0, align 4
@TCO_TIMEOUT = common dso_local global i32 0, align 4
@TCO2_STS = common dso_local global i32 0, align 4
@TCO_SECOND_TO_STS = common dso_local global i32 0, align 4
@TCO_BOOT_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ichwd_softc*)* @ichwd_sts_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichwd_sts_reset(%struct.ichwd_softc* %0) #0 {
  %2 = alloca %struct.ichwd_softc*, align 8
  store %struct.ichwd_softc* %0, %struct.ichwd_softc** %2, align 8
  %3 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %4 = load i32, i32* @TCO1_STS, align 4
  %5 = load i32, i32* @TCO_TIMEOUT, align 4
  %6 = call i32 @ichwd_write_tco_2(%struct.ichwd_softc* %3, i32 %4, i32 %5)
  %7 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %8 = load i32, i32* @TCO2_STS, align 4
  %9 = load i32, i32* @TCO_SECOND_TO_STS, align 4
  %10 = call i32 @ichwd_write_tco_2(%struct.ichwd_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %17 = load i32, i32* @TCO2_STS, align 4
  %18 = load i32, i32* @TCO_BOOT_STS, align 4
  %19 = call i32 @ichwd_write_tco_2(%struct.ichwd_softc* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @ichwd_write_tco_2(%struct.ichwd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
