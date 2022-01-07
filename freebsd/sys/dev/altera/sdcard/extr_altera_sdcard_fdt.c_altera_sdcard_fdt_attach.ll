; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard_fdt.c_altera_sdcard_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard_fdt.c_altera_sdcard_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_sdcard_softc = type { i32*, i64, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @altera_sdcard_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_sdcard_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.altera_sdcard_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.altera_sdcard_softc* @device_get_softc(i32 %5)
  store %struct.altera_sdcard_softc* %6, %struct.altera_sdcard_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %9 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %13 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %15 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %19 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i32* @bus_alloc_resource_any(i32 %16, i32 %17, i64* %19, i32 %20)
  %22 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %23 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %25 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %4, align 8
  %34 = call i32 @altera_sdcard_attach(%struct.altera_sdcard_softc* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.altera_sdcard_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @altera_sdcard_attach(%struct.altera_sdcard_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
