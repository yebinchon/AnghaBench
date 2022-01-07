; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_retain_dynamic_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_retain_dynamic_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bhndb_softc = type { i32, i32 }
%struct.resource = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"dynamic window initialization for 0x%llx-0x%llx failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhndb_dw_alloc* (%struct.bhndb_softc*, %struct.resource*)* @bhndb_retain_dynamic_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhndb_dw_alloc* @bhndb_retain_dynamic_window(%struct.bhndb_softc* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.bhndb_dw_alloc*, align 8
  %4 = alloca %struct.bhndb_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.bhndb_dw_alloc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %10 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc* %10, i32 %11)
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = call i64 @rman_get_start(%struct.resource* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.resource*, %struct.resource** %5, align 8
  %16 = call i64 @rman_get_size(%struct.resource* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call %struct.bhndb_dw_alloc* @bhndb_dw_find_mapping(i32 %19, i64 %20, i64 %21)
  store %struct.bhndb_dw_alloc* %22, %struct.bhndb_dw_alloc** %6, align 8
  %23 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %24 = icmp ne %struct.bhndb_dw_alloc* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i64 @bhndb_dw_retain(i32 %28, %struct.bhndb_dw_alloc* %29, %struct.resource* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  store %struct.bhndb_dw_alloc* %34, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

35:                                               ; preds = %25
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

36:                                               ; preds = %2
  %37 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.bhndb_dw_alloc* @bhndb_dw_next_free(i32 %39)
  store %struct.bhndb_dw_alloc* %40, %struct.bhndb_dw_alloc** %6, align 8
  %41 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %42 = icmp eq %struct.bhndb_dw_alloc* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

44:                                               ; preds = %36
  %45 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %46 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = call i64 @rman_get_size(%struct.resource* %50)
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

54:                                               ; preds = %44
  %55 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %56 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %59 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = call i64 @rman_get_start(%struct.resource* %62)
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = call i64 @rman_get_size(%struct.resource* %64)
  %66 = call i32 @bhndb_dw_set_addr(i32 %57, i32 %60, %struct.bhndb_dw_alloc* %61, i64 %63, i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %54
  %70 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %74, %75
  %77 = sub i64 %76, 1
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %77, i32 %78)
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

80:                                               ; preds = %54
  %81 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = call i64 @bhndb_dw_retain(i32 %83, %struct.bhndb_dw_alloc* %84, %struct.resource* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

89:                                               ; preds = %80
  %90 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  store %struct.bhndb_dw_alloc* %90, %struct.bhndb_dw_alloc** %3, align 8
  br label %91

91:                                               ; preds = %89, %88, %69, %53, %43, %35, %33
  %92 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %3, align 8
  ret %struct.bhndb_dw_alloc* %92
}

declare dso_local i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc*, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_dw_find_mapping(i32, i64, i64) #1

declare dso_local i64 @bhndb_dw_retain(i32, %struct.bhndb_dw_alloc*, %struct.resource*) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_dw_next_free(i32) #1

declare dso_local i32 @bhndb_dw_set_addr(i32, i32, %struct.bhndb_dw_alloc*, i64, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
