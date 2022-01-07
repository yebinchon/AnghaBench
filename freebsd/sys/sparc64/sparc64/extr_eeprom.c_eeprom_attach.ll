; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_eeprom.c_eeprom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_eeprom.c_eeprom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mk48txx_softc = type { i32, i32, i32, i32*, i32* }
%struct.timespec = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"eeprom_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot determine model\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"watchdog-enable\00", align 1
@sparc64_model = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"SUNW,Ultra-250\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SUNW,Ultra-4\00", align 1
@MK48TXX_WDOG_REGISTER = common dso_local global i32 0, align 4
@MK48TXX_WDOG_ENABLE_WDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot attach time of day clock\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"invalid time\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"current time: %ld.%09ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @eeprom_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mk48txx_softc*, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mk48txx_softc* @device_get_softc(i32 %8)
  store %struct.mk48txx_softc* %9, %struct.mk48txx_softc** %4, align 8
  %10 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %10, i32 0, i32 2
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i32* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %7, i32 %16)
  %18 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %6, align 4
  br label %97

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32* @ofw_bus_get_model(i32 %29)
  %31 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = icmp eq i32* %30, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %6, align 4
  br label %89

38:                                               ; preds = %28
  %39 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %39, i32 0, i32 0
  store i32 1968, i32* %40, align 8
  %41 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @ofw_bus_get_node(i32 %43)
  %45 = call i32 @OF_getproplen(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %63

47:                                               ; preds = %38
  %48 = load i32, i32* @sparc64_model, align 4
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @sparc64_model, align 4
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51, %47
  %56 = load i32, i32* @MK48TXX_WDOG_REGISTER, align 4
  %57 = load i32, i32* @MK48TXX_WDOG_ENABLE_WDS, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %60 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55, %51, %38
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @mk48txx_attach(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %89

70:                                               ; preds = %63
  %71 = load i64, i64* @bootverbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @mk48txx_gettime(i32 %74, %struct.timespec* %5)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %87

80:                                               ; preds = %73
  %81 = load i32, i32* %3, align 4
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %83, i32 %85)
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87, %70
  store i32 0, i32* %2, align 4
  br label %102

89:                                               ; preds = %67, %34
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @SYS_RES_MEMORY, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %94 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @bus_release_resource(i32 %90, i32 %91, i32 %92, i32* %95)
  br label %97

97:                                               ; preds = %89, %24
  %98 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %4, align 8
  %99 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %98, i32 0, i32 2
  %100 = call i32 @mtx_destroy(i32* %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %88
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.mk48txx_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @ofw_bus_get_model(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mk48txx_attach(i32) #1

declare dso_local i64 @mk48txx_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
