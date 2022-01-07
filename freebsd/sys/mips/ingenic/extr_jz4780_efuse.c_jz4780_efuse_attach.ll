; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_efuse.c_jz4780_efuse_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_efuse.c_jz4780_efuse_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_efuse_softc = type { i32, i32, i32 }

@jz4780_efuse_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@JZ_EFUCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_efuse_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_efuse_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_efuse_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.jz4780_efuse_softc* @device_get_softc(i32 %5)
  store %struct.jz4780_efuse_softc* %6, %struct.jz4780_efuse_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %9 = getelementptr inbounds %struct.jz4780_efuse_softc, %struct.jz4780_efuse_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @jz4780_efuse_spec, align 4
  %12 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %13 = getelementptr inbounds %struct.jz4780_efuse_softc, %struct.jz4780_efuse_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %23 = load i32, i32* @JZ_EFUCFG, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.jz4780_efuse_softc* %22, i32 %23, i32 262144)
  %25 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %26 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %27 = getelementptr inbounds %struct.jz4780_efuse_softc, %struct.jz4780_efuse_softc* %26, i32 0, i32 1
  %28 = call i32 @jz4780_efuse_read(%struct.jz4780_efuse_softc* %25, i32 24, i32* %27, i32 4)
  %29 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %30 = call i32 @jz4780_efuse_update_kenv(%struct.jz4780_efuse_softc* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @jz4780_efuse_spec, align 4
  %33 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %4, align 8
  %34 = getelementptr inbounds %struct.jz4780_efuse_softc, %struct.jz4780_efuse_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bus_release_resources(i32 %31, i32 %32, i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %21, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.jz4780_efuse_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_efuse_softc*, i32, i32) #1

declare dso_local i32 @jz4780_efuse_read(%struct.jz4780_efuse_softc*, i32, i32*, i32) #1

declare dso_local i32 @jz4780_efuse_update_kenv(%struct.jz4780_efuse_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
