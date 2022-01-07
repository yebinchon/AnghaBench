; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_softc = type { i32, i32 }
%struct.rman = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, i64, i64)* @bhndb_adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bhndb_softc*, align 8
  %15 = alloca %struct.rman*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.bhndb_softc* @device_get_softc(i32 %19)
  store %struct.bhndb_softc* %20, %struct.bhndb_softc** %14, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.rman* @bhndb_get_rman(%struct.bhndb_softc* %21, i32 %22, i32 %23)
  store %struct.rman* %24, %struct.rman** %15, align 8
  %25 = load %struct.rman*, %struct.rman** %15, align 8
  %26 = icmp eq %struct.rman* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %6
  %28 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %29 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_get_parent(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @BUS_ADJUST_RESOURCE(i32 %31, i32 %32, i32 %33, %struct.resource* %34, i64 %35, i64 %36)
  store i32 %37, i32* %7, align 4
  br label %93

38:                                               ; preds = %6
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %7, align 4
  br label %93

44:                                               ; preds = %38
  %45 = load %struct.resource*, %struct.resource** %11, align 8
  %46 = load %struct.rman*, %struct.rman** %15, align 8
  %47 = call i32 @rman_is_region_manager(%struct.resource* %45, %struct.rman* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %7, align 4
  br label %93

51:                                               ; preds = %44
  %52 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %53 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %52)
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = call i32 @rman_get_flags(%struct.resource* %54)
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %81

60:                                               ; preds = %51
  %61 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %62 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.resource*, %struct.resource** %11, align 8
  %66 = call i32 @bhndb_find_resource_limits(i32 %63, i32 %64, %struct.resource* %65, i64* %16, i64* %17)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %81

70:                                               ; preds = %60
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %18, align 4
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %78, %69, %59
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.resource*, %struct.resource** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @rman_adjust_resource(%struct.resource* %85, i64 %86, i64 %87)
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %91 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %90)
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %49, %42, %27
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @bhndb_get_rman(%struct.bhndb_softc*, i32, i32) #1

declare dso_local i32 @BUS_ADJUST_RESOURCE(i32, i32, i32, %struct.resource*, i64, i64) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @BHNDB_LOCK(%struct.bhndb_softc*) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @bhndb_find_resource_limits(i32, i32, %struct.resource*, i64*, i64*) #1

declare dso_local i32 @rman_adjust_resource(%struct.resource*, i64, i64) #1

declare dso_local i32 @BHNDB_UNLOCK(%struct.bhndb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
