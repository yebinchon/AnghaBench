; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_itwd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_itwd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itwd_softc = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"dev.itwd.irq\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dev.itwd.nmi\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Ignoring invalid IRQ value %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Ignoring NMI mode if IRQ is not set\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@itwd_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to setup irq: error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Using IRQ%d to signal timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Configured for system reset on timeout\0A\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@wd_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @itwd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itwd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.itwd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.itwd_softc* @device_get_softc(i32 %8)
  store %struct.itwd_softc* %9, %struct.itwd_softc** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @superio_write(i32 %10, i32 116, i32 0)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @superio_write(i32 %12, i32 115, i32 0)
  %14 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %5)
  %15 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 15
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28, %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %96

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %96, label %40

40:                                               ; preds = %37
  %41 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %42 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %46 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @bus_set_resource(i32 %43, i32 %44, i64 %47, i32 %48, i32 1)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %53 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %52, i32 0, i32 2
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = call i32* @bus_alloc_resource_any(i32 %50, i32 %51, i64* %53, i32 %54)
  %56 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %57 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %59 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %119

66:                                               ; preds = %40
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %69 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @INTR_TYPE_MISC, align 4
  %72 = load i32, i32* @INTR_MPSAFE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @itwd_intr, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %77 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %76, i32 0, i32 3
  %78 = call i32 @bus_setup_intr(i32 %67, i32* %70, i32 %73, i32* null, i32 %74, i32 %75, i32* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %66
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SYS_RES_IRQ, align 4
  %84 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %85 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %88 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_release_resource(i32 %82, i32 %83, i64 %86, i32* %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %119

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %95, %37, %34
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %106

103:                                              ; preds = %96
  store i32 64, i32* %5, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @superio_write(i32 %107, i32 113, i32 0)
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 128, %110
  %112 = call i32 @superio_write(i32 %109, i32 114, i32 %111)
  %113 = load i32, i32* @watchdog_list, align 4
  %114 = load i32, i32* @wd_func, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @EVENTHANDLER_REGISTER(i32 %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.itwd_softc*, %struct.itwd_softc** %4, align 8
  %118 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %106, %81, %62
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.itwd_softc* @device_get_softc(i32) #1

declare dso_local i32 @superio_write(i32, i32, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_set_resource(i32, i32, i64, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
