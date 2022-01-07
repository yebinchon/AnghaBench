; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/auxio/extr_auxio.c_auxio_attach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/auxio/extr_auxio.c_auxio_attach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxio_softc = type { i32, i32*, i32, i32, i32*, i32*, %struct.resource**, i32 }
%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@AUXIO_LED_LED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"auxioled\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxio_softc*)* @auxio_attach_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxio_attach_common(%struct.auxio_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auxio_softc*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.auxio_softc* %0, %struct.auxio_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %63, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %9 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  %20 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %21 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %25 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call %struct.resource* @bus_alloc_resource_any(i32 %22, i32 %23, i32* %29, i32 %30)
  store %struct.resource* %31, %struct.resource** %4, align 8
  %32 = load %struct.resource*, %struct.resource** %4, align 8
  %33 = icmp eq %struct.resource* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %12
  %35 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %36 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %79

39:                                               ; preds = %12
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %42 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %41, i32 0, i32 6
  %43 = load %struct.resource**, %struct.resource*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.resource*, %struct.resource** %43, i64 %45
  store %struct.resource* %40, %struct.resource** %46, align 8
  %47 = load %struct.resource*, %struct.resource** %4, align 8
  %48 = call i32 @rman_get_bustag(%struct.resource* %47)
  %49 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %50 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = call i32 @rman_get_bushandle(%struct.resource* %55)
  %57 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %58 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %6

66:                                               ; preds = %6
  %67 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %68 = call i32 @auxio_led_read(%struct.auxio_softc* %67)
  %69 = load i32, i32* @AUXIO_LED_LED, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %72 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %74 = call i32 @led_create(i32 (%struct.auxio_softc*, i32)* @auxio_led_func, %struct.auxio_softc* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %76 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %78 = call i32 @auxio_led_func(%struct.auxio_softc* %77, i32 1)
  store i32 0, i32* %2, align 4
  br label %83

79:                                               ; preds = %34
  %80 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %81 = call i32 @auxio_free_resource(%struct.auxio_softc* %80)
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %66
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @auxio_led_read(%struct.auxio_softc*) #1

declare dso_local i32 @led_create(i32 (%struct.auxio_softc*, i32)*, %struct.auxio_softc*, i8*) #1

declare dso_local i32 @auxio_led_func(%struct.auxio_softc*, i32) #1

declare dso_local i32 @auxio_free_resource(%struct.auxio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
