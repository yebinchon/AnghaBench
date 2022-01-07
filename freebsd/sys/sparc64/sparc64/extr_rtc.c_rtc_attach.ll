; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rtc.c_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rtc.c_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.mc146818_softc = type { i32, i32, i32, i32, i64, i32 (i32, i32, i32)*, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"rtc_mtx\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ebus\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RTC_READ = common dso_local global i32 0, align 4
@MC146818_NO_CENT_ADJUST = common dso_local global i32 0, align 4
@MC_REGA = common dso_local global i32 0, align 4
@PC87317_APC = common dso_local global i32 0, align 4
@PC87317_APC_CADDR = common dso_local global i32 0, align 4
@PC87317_APC_CADDR_BANK1 = common dso_local global i32 0, align 4
@PC87317_RTC_CR = common dso_local global i32 0, align 4
@PC87317_COMMON = common dso_local global i32 0, align 4
@pc87317_getcent = common dso_local global i32 0, align 4
@pc87317_setcent = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot attach time of day clock\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"invalid time\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"current time: %ld.%09ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.mc146818_softc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mc146818_softc* @device_get_softc(i32 %10)
  store %struct.mc146818_softc* %11, %struct.mc146818_softc** %5, align 8
  %12 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @MTX_SPIN, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14)
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  %18 = call i32 @device_get_name(i32 %17)
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %1
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call %struct.resource* @bus_alloc_resource_any(i32 %23, i32 %31, i32* %9, i32 %32)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = icmp eq %struct.resource* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %8, align 4
  br label %121

40:                                               ; preds = %30
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = call i32 @rman_get_bustag(%struct.resource* %41)
  %43 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %44 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = call i32 @rman_get_bushandle(%struct.resource* %45)
  %47 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @RTC_READ, align 4
  %50 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %51 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %53 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %52, i32 0, i32 5
  store i32 (i32, i32, i32)* @RTC_WRITE, i32 (i32, i32, i32)** %53, align 8
  %54 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %55 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @MC146818_NO_CENT_ADJUST, align 4
  %57 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %58 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %40
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @MC_REGA, align 4
  %64 = load i32, i32* @PC87317_APC, align 4
  %65 = call i32 @RTC_WRITE(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @PC87317_APC_CADDR, align 4
  %68 = load i32, i32* @PC87317_APC_CADDR_BANK1, align 4
  %69 = load i32, i32* @PC87317_RTC_CR, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @RTC_WRITE(i32 %66, i32 %67, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @MC_REGA, align 4
  %74 = load i32, i32* @PC87317_COMMON, align 4
  %75 = call i32 @RTC_WRITE(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @pc87317_getcent, align 4
  %77 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %78 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @pc87317_setcent, align 4
  %80 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %81 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %61, %40
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @mc146818_attach(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %108

89:                                               ; preds = %82
  %90 = load i64, i64* @bootverbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @mc146818_gettime(i32 %93, %struct.timespec* %4)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %3, align 4
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %102, i32 %104)
  br label %106

106:                                              ; preds = %99, %96
  br label %107

107:                                              ; preds = %106, %89
  store i32 0, i32* %2, align 4
  br label %126

108:                                              ; preds = %86
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @SYS_RES_MEMORY, align 4
  br label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @SYS_RES_IOPORT, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.resource*, %struct.resource** %6, align 8
  %120 = call i32 @bus_release_resource(i32 %109, i32 %117, i32 %118, %struct.resource* %119)
  br label %121

121:                                              ; preds = %116, %36
  %122 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %123 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %122, i32 0, i32 0
  %124 = call i32 @mtx_destroy(i32* %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %107
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.mc146818_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @RTC_WRITE(i32, i32, i32) #1

declare dso_local i32 @mc146818_attach(i32) #1

declare dso_local i64 @mc146818_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
