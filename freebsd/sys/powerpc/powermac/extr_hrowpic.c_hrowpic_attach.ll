; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrowpic_softc = type { i32*, i32, i32, i64, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not alloc mem resource!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HPIC_ENABLE = common dso_local global i32 0, align 4
@HPIC_PRIMARY = common dso_local global i32 0, align 4
@HPIC_CLEAR = common dso_local global i32 0, align 4
@HPIC_SECONDARY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hrowpic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hrowpic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hrowpic_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.hrowpic_softc* @device_get_softc(i32 %5)
  store %struct.hrowpic_softc* %6, %struct.hrowpic_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %9 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %11 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %15 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %14, i32 0, i32 3
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i64* %15, i32 %16)
  %18 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %21 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %1
  %29 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %30 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @rman_get_bustag(i32* %31)
  %33 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %34 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %36 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rman_get_bushandle(i32* %37)
  %39 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %40 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %42 = load i32, i32* @HPIC_ENABLE, align 4
  %43 = load i32, i32* @HPIC_PRIMARY, align 4
  %44 = call i32 @hrowpic_write_reg(%struct.hrowpic_softc* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %46 = load i32, i32* @HPIC_CLEAR, align 4
  %47 = load i32, i32* @HPIC_PRIMARY, align 4
  %48 = call i32 @hrowpic_write_reg(%struct.hrowpic_softc* %45, i32 %46, i32 %47, i32 -1)
  %49 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %50 = load i32, i32* @HPIC_ENABLE, align 4
  %51 = load i32, i32* @HPIC_SECONDARY, align 4
  %52 = call i32 @hrowpic_write_reg(%struct.hrowpic_softc* %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %54 = load i32, i32* @HPIC_CLEAR, align 4
  %55 = load i32, i32* @HPIC_SECONDARY, align 4
  %56 = call i32 @hrowpic_write_reg(%struct.hrowpic_softc* %53, i32 %54, i32 %55, i32 -1)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @ofw_bus_get_node(i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @powerpc_register_pic(i32 %57, i32 %59, i32 64, i32 0, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %28, %24
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.hrowpic_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @hrowpic_write_reg(%struct.hrowpic_softc*, i32, i32, i32) #1

declare dso_local i32 @powerpc_register_pic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
