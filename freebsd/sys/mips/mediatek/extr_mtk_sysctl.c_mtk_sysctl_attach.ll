; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_sysctl.c_mtk_sysctl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_sysctl.c_mtk_sysctl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_sysctl_softc = type { i32, i32*, i64 }

@mtk_sysctl_sc = common dso_local global %struct.mtk_sysctl_softc* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Only one sysctl module supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_sysctl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sysctl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_sysctl_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mtk_sysctl_softc* @device_get_softc(i32 %5)
  store %struct.mtk_sysctl_softc* %6, %struct.mtk_sysctl_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @device_get_unit(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** @mtk_sysctl_sc, align 8
  %12 = icmp ne %struct.mtk_sysctl_softc* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  store %struct.mtk_sysctl_softc* %18, %struct.mtk_sysctl_softc** @mtk_sysctl_sc, align 8
  %19 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_sysctl_softc, %struct.mtk_sysctl_softc* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SYS_RES_MEMORY, align 4
  %23 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_sysctl_softc, %struct.mtk_sysctl_softc* %23, i32 0, i32 2
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i32* @bus_alloc_resource_any(i32 %21, i32 %22, i64* %24, i32 %25)
  %27 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_sysctl_softc, %struct.mtk_sysctl_softc* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_sysctl_softc, %struct.mtk_sysctl_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @mtk_sysctl_detach(i32 %36)
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %17
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_sysctl_softc, %struct.mtk_sysctl_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mtk_sysctl_softc*, %struct.mtk_sysctl_softc** %4, align 8
  %44 = call i32 @MTK_SYSCTL_LOCK_INIT(%struct.mtk_sysctl_softc* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %33, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mtk_sysctl_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @mtk_sysctl_detach(i32) #1

declare dso_local i32 @MTK_SYSCTL_LOCK_INIT(%struct.mtk_sysctl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
