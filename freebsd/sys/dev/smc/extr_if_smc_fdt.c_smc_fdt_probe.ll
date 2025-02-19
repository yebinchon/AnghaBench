; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc_fdt.c_smc_fdt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc_fdt.c_smc_fdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"smsc,lan91c111\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smc_fdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_fdt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_status_okay(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ofw_bus_is_compatible(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.smc_softc* @device_get_softc(i32 %15)
  store %struct.smc_softc* %16, %struct.smc_softc** %4, align 8
  %17 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @smc_probe(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %27

25:                                               ; preds = %10
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %24, %22, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local %struct.smc_softc* @device_get_softc(i32) #1

declare dso_local i64 @smc_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
