; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_alloc_pmu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_alloc_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.chipc_caps = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@BHND_SERVICE_CHIPC = common dso_local global i32 0, align 4
@SIBA_PMU_BHND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"unexpected PMU state: %d\00", align 1
@SIBA_PMU_PWRCTL = common dso_local global i64 0, align 8
@BHND_SERVICE_PWRCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"PWRCTL not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SIBA_PMU_FIXED = common dso_local global i64 0, align 8
@SIBA_PMU_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"duplicate PMU allocation for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @siba_alloc_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_alloc_pmu(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.siba_softc*, align 8
  %7 = alloca %struct.siba_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.chipc_caps, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.siba_softc* @device_get_softc(i64 %20)
  store %struct.siba_softc* %21, %struct.siba_softc** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.siba_devinfo* @device_get_ivars(i64 %22)
  store %struct.siba_devinfo* %23, %struct.siba_devinfo** %7, align 8
  store i64 0, i64* %9, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @BHND_SERVICE_CHIPC, align 4
  %26 = call i64 @bhnd_retain_provider(i64 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = call %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i64 %31)
  %33 = bitcast %struct.chipc_caps* %10 to i8*
  %34 = bitcast %struct.chipc_caps* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @BHND_SERVICE_CHIPC, align 4
  %38 = call i32 @bhnd_release_provider(i64 %35, i64 %36, i32 %37)
  br label %41

39:                                               ; preds = %19
  %40 = call i32 @memset(%struct.chipc_caps* %10, i32 0, i32 16)
  br label %41

41:                                               ; preds = %39, %30
  %42 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %10, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @bhnd_generic_alloc_pmu(i64 %46, i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %3, align 4
  br label %105

52:                                               ; preds = %45
  %53 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %54 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SIBA_PMU_BHND, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %60 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @KASSERT(i32 %58, i8* %62)
  store i32 0, i32* %3, align 4
  br label %105

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i64, i64* @SIBA_PMU_PWRCTL, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @BHND_SERVICE_PWRCTL, align 4
  %72 = call i64 @bhnd_retain_provider(i64 %70, i32 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @device_printf(i64 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENODEV, align 4
  store i32 %79, i32* %3, align 4
  br label %105

80:                                               ; preds = %68
  br label %83

81:                                               ; preds = %64
  %82 = load i64, i64* @SIBA_PMU_FIXED, align 8
  store i64 %82, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %85 = call i32 @SIBA_LOCK(%struct.siba_softc* %84)
  %86 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %87 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SIBA_PMU_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @device_get_nameunit(i64 %92)
  %94 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %83
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %98 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %101 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %104 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %95, %76, %52, %50, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_softc* @device_get_softc(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @bhnd_retain_provider(i64, i32) #1

declare dso_local %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bhnd_release_provider(i64, i64, i32) #1

declare dso_local i32 @memset(%struct.chipc_caps*, i32, i32) #1

declare dso_local i32 @bhnd_generic_alloc_pmu(i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i64, i8*) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
