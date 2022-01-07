; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm75_softc = type { i32 }

@HWTYPE_LM75 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"LM75 temperature sensor\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lm75_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm75_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.lm75_softc* @device_get_softc(i32 %4)
  store %struct.lm75_softc* %5, %struct.lm75_softc** %3, align 8
  %6 = load i32, i32* @HWTYPE_LM75, align 4
  %7 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %8 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_set_desc(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  ret i32 %11
}

declare dso_local %struct.lm75_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
