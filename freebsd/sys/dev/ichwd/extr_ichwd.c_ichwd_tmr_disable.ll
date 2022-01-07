; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_tmr_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_tmr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32, i64 }

@TCO1_CNT = common dso_local global i32 0, align 4
@TCO_CNT_PRESERVE = common dso_local global i32 0, align 4
@TCO_TMR_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"timer disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ichwd_softc*)* @ichwd_tmr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichwd_tmr_disable(%struct.ichwd_softc* %0) #0 {
  %2 = alloca %struct.ichwd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ichwd_softc* %0, %struct.ichwd_softc** %2, align 8
  %4 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %5 = load i32, i32* @TCO1_CNT, align 4
  %6 = call i32 @ichwd_read_tco_2(%struct.ichwd_softc* %4, i32 %5)
  %7 = load i32, i32* @TCO_CNT_PRESERVE, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %10 = load i32, i32* @TCO1_CNT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TCO_TMR_HALT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @ichwd_write_tco_2(%struct.ichwd_softc* %9, i32 %10, i32 %13)
  %15 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ichwd_verbose_printf(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ichwd_read_tco_2(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_write_tco_2(%struct.ichwd_softc*, i32, i32) #1

declare dso_local i32 @ichwd_verbose_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
