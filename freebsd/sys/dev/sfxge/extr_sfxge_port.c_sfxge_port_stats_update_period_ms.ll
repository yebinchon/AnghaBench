; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_stats_update_period_ms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_stats_update_period_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32 }

@sfxge_stats_update_period_ms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"treat negative stats update period %d as 0 (disable)\0A\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"treat too big stats update period %d as %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_port_stats_update_period_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_port_stats_update_period_ms(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %4 = load i32, i32* @sfxge_stats_update_period_ms, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %10, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UINT16_MAX, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UINT16_MAX, align 4
  %23 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* @UINT16_MAX, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %13
  br label %26

26:                                               ; preds = %25, %7
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
