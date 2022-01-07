; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_fman.c_fman_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_fman.c_fman_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_softc = type { i32, i32, i32, i32*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.fman_config = type { i64, i64, i32, i32, i32, i32, i8* }

@E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"could not initialize smart allocator.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fsl,qman-channel-range\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Missing QMan channel range property!\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"could not allocate memory.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"could not allocate interrupt.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"could not allocate error interrupt.\0A\00", align 1
@fman_exception_callback = common dso_local global i32 0, align 4
@fman_error_callback = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"could not be configured\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fman_softc*, align 8
  %5 = alloca %struct.fman_config, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.fman_softc* @device_get_softc(i8* %8)
  store %struct.fman_softc* %9, %struct.fman_softc** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %12 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = call i64 (...) @XX_MallocSmartInit()
  %15 = load i64, i64* @E_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @device_printf(i8* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %148

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @ofw_bus_get_node(i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %26 = call i64 @OF_getencprop(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %25, i32 16)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @device_printf(i8* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %148

32:                                               ; preds = %21
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %34 = load i8*, i8** %33, align 16
  %35 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %36 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %40 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %42 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %46 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %45, i32 0, i32 0
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = load i32, i32* @RF_SHAREABLE, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @bus_alloc_resource_any(i8* %43, i32 %44, i32* %46, i32 %49)
  %51 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %52 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %54 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %53, i32 0, i32 6
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %32
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @device_printf(i8* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %148

61:                                               ; preds = %32
  %62 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %63 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %67 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %66, i32 0, i32 1
  %68 = load i32, i32* @RF_ACTIVE, align 4
  %69 = call i8* @bus_alloc_resource_any(i8* %64, i32 %65, i32* %67, i32 %68)
  %70 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %71 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %73 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %61
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @device_printf(i8* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %144

79:                                               ; preds = %61
  %80 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %81 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @rman_get_start(i8* %82)
  %84 = call i32 @XX_FmanFixIntr(i32 %83)
  %85 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %86 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* @SYS_RES_IRQ, align 4
  %89 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %90 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %89, i32 0, i32 2
  %91 = load i32, i32* @RF_ACTIVE, align 4
  %92 = load i32, i32* @RF_SHAREABLE, align 4
  %93 = or i32 %91, %92
  %94 = call i8* @bus_alloc_resource_any(i8* %87, i32 %88, i32* %90, i32 %93)
  %95 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %96 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %98 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %79
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @device_printf(i8* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %144

104:                                              ; preds = %79
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 6
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = call i32 @device_get_unit(i8* %107)
  %109 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 5
  store i32 %108, i32* %109, align 4
  %110 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %111 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %110, i32 0, i32 6
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @rman_get_bushandle(i8* %112)
  %114 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 4
  store i32 %113, i32* %114, align 8
  %115 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %116 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %115, i32 0, i32 5
  %117 = load i8*, i8** %116, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %121 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 1
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* @fman_exception_callback, align 4
  %126 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 3
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @fman_error_callback, align 4
  %128 = getelementptr inbounds %struct.fman_config, %struct.fman_config* %5, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  %129 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %130 = call i32* @fman_init(%struct.fman_softc* %129, %struct.fman_config* %5)
  %131 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %132 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %131, i32 0, i32 3
  store i32* %130, i32** %132, align 8
  %133 = load %struct.fman_softc*, %struct.fman_softc** %4, align 8
  %134 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %104
  %138 = load i8*, i8** %3, align 8
  %139 = call i32 @device_printf(i8* %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %2, align 4
  br label %148

141:                                              ; preds = %104
  %142 = load i8*, i8** %3, align 8
  %143 = call i32 @bus_generic_attach(i8* %142)
  store i32 %143, i32* %2, align 4
  br label %148

144:                                              ; preds = %101, %76
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 @fman_detach(i8* %145)
  %147 = load i32, i32* @ENXIO, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %144, %141, %137, %57, %28, %17
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.fman_softc* @device_get_softc(i8*) #1

declare dso_local i64 @XX_MallocSmartInit(...) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @XX_FmanFixIntr(i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @device_get_unit(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32* @fman_init(%struct.fman_softc*, %struct.fman_config*) #1

declare dso_local i32 @bus_generic_attach(i8*) #1

declare dso_local i32 @fman_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
