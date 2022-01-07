; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_sprom.c_bhnd_sprom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_sprom.c_bhnd_sprom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_sprom_softc = type { i32*, i32 }
%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid sprom offset\0A\00", align 1
@bhnd_nvram_sprom_class = common dso_local global i32 0, align 4
@BHND_SERVICE_NVRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to register NVRAM provider: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_sprom_attach(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_sprom_softc*, align 8
  %7 = alloca %struct.bhnd_nvram_io*, align 8
  %8 = alloca %struct.bhnd_resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.bhnd_sprom_softc* @device_get_softc(i32 %13)
  store %struct.bhnd_sprom_softc* %14, %struct.bhnd_sprom_softc** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bhnd_sprom_softc*, %struct.bhnd_sprom_softc** %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_sprom_softc, %struct.bhnd_sprom_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bhnd_sprom_softc*, %struct.bhnd_sprom_softc** %6, align 8
  %19 = getelementptr inbounds %struct.bhnd_sprom_softc, %struct.bhnd_sprom_softc* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %7, align 8
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = call %struct.bhnd_resource* @bhnd_alloc_resource_any(i32 %20, i32 %21, i32* %11, i32 %22)
  store %struct.bhnd_resource* %23, %struct.bhnd_resource** %8, align 8
  %24 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %25 = icmp eq %struct.bhnd_resource* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %112

30:                                               ; preds = %2
  %31 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %32 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rman_get_size(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* @BUS_SPACE_MAXSIZE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %30
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %12, align 4
  br label %85

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %10, align 8
  %52 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call %struct.bhnd_nvram_io* @bhnd_nvram_iores_new(%struct.bhnd_resource* %52, i64 %53, i64 %54, i32 4)
  store %struct.bhnd_nvram_io* %55, %struct.bhnd_nvram_io** %7, align 8
  %56 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %57 = icmp eq %struct.bhnd_nvram_io* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %12, align 4
  br label %85

60:                                               ; preds = %48
  %61 = load %struct.bhnd_sprom_softc*, %struct.bhnd_sprom_softc** %6, align 8
  %62 = getelementptr inbounds %struct.bhnd_sprom_softc, %struct.bhnd_sprom_softc* %61, i32 0, i32 0
  %63 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %64 = call i32 @bhnd_nvram_store_parse_new(i32** %62, %struct.bhnd_nvram_io* %63, i32* @bhnd_nvram_sprom_class)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %85

68:                                               ; preds = %60
  %69 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %70 = call i32 @bhnd_nvram_io_free(%struct.bhnd_nvram_io* %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SYS_RES_MEMORY, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %75 = call i32 @bhnd_release_resource(i32 %71, i32 %72, i32 %73, %struct.bhnd_resource* %74)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %7, align 8
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %8, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @BHND_SERVICE_NVRAM, align 4
  %78 = call i32 @bhnd_register_provider(i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %85

84:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %112

85:                                               ; preds = %80, %67, %58, %44
  %86 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %87 = icmp ne %struct.bhnd_nvram_io* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %90 = call i32 @bhnd_nvram_io_free(%struct.bhnd_nvram_io* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %93 = icmp ne %struct.bhnd_resource* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SYS_RES_MEMORY, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %99 = call i32 @bhnd_release_resource(i32 %95, i32 %96, i32 %97, %struct.bhnd_resource* %98)
  br label %100

100:                                              ; preds = %94, %91
  %101 = load %struct.bhnd_sprom_softc*, %struct.bhnd_sprom_softc** %6, align 8
  %102 = getelementptr inbounds %struct.bhnd_sprom_softc, %struct.bhnd_sprom_softc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.bhnd_sprom_softc*, %struct.bhnd_sprom_softc** %6, align 8
  %107 = getelementptr inbounds %struct.bhnd_sprom_softc, %struct.bhnd_sprom_softc* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bhnd_nvram_store_free(i32* %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %84, %26
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.bhnd_sprom_softc* @device_get_softc(i32) #1

declare dso_local %struct.bhnd_resource* @bhnd_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local %struct.bhnd_nvram_io* @bhnd_nvram_iores_new(%struct.bhnd_resource*, i64, i64, i32) #1

declare dso_local i32 @bhnd_nvram_store_parse_new(i32**, %struct.bhnd_nvram_io*, i32*) #1

declare dso_local i32 @bhnd_nvram_io_free(%struct.bhnd_nvram_io*) #1

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, %struct.bhnd_resource*) #1

declare dso_local i32 @bhnd_register_provider(i32, i32) #1

declare dso_local i32 @bhnd_nvram_store_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
