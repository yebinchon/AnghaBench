; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelspi_softc = type { i32*, i64, i32*, i64, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't allocate memory resource\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't allocate IRQ resource\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@intelspi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot setup the interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intelspi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelspi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.intelspi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.intelspi_softc* @device_get_softc(i32 %5)
  store %struct.intelspi_softc* %6, %struct.intelspi_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @acpi_get_handle(i32 %10)
  %12 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %15 = call i32 @INTELSPI_LOCK_INIT(%struct.intelspi_softc* %14)
  %16 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %22, i32 0, i32 3
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i8* @bus_alloc_resource_any(i32 %20, i32 %21, i64* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %30 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %81

36:                                               ; preds = %1
  %37 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %43, i32 0, i32 1
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i64* %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %49 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %81

57:                                               ; preds = %36
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @INTR_TYPE_MISC, align 4
  %63 = load i32, i32* @INTR_MPSAFE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @intelspi_intr, align 4
  %66 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %67 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %67, i32 0, i32 4
  %69 = call i64 @bus_setup_intr(i32 %58, i32* %61, i32 %64, i32* null, i32 %65, %struct.intelspi_softc* %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %81

74:                                               ; preds = %57
  %75 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %76 = call i32 @intelspi_init(%struct.intelspi_softc* %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @device_add_child(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @bus_generic_attach(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %115

81:                                               ; preds = %71, %54, %33
  %82 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %83 = call i32 @INTELSPI_LOCK_DESTROY(%struct.intelspi_softc* %82)
  %84 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %85 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %95 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_release_resource(i32 %89, i32 %90, i64 %93, i32* %96)
  br label %98

98:                                               ; preds = %88, %81
  %99 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %100 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @SYS_RES_IRQ, align 4
  %106 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %107 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.intelspi_softc*, %struct.intelspi_softc** %4, align 8
  %110 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @bus_release_resource(i32 %104, i32 %105, i64 %108, i32* %111)
  br label %113

113:                                              ; preds = %103, %98
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %74
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.intelspi_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @INTELSPI_LOCK_INIT(%struct.intelspi_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.intelspi_softc*, i32*) #1

declare dso_local i32 @intelspi_init(%struct.intelspi_softc*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @INTELSPI_LOCK_DESTROY(%struct.intelspi_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
