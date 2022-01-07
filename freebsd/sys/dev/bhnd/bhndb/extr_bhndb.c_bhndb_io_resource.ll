; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_io_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_io_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.bhndb_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"borrowed register window does not map expected range 0x%llx-0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"failed to set register window target mapping 0x%llx-0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhndb_dw_alloc* (%struct.bhndb_softc*, i64, i64, i64*, i32*, i64*)* @bhndb_io_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhndb_dw_alloc* @bhndb_io_resource(%struct.bhndb_softc* %0, i64 %1, i64 %2, i64* %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.bhndb_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.bhndb_dw_alloc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load %struct.bhndb_softc*, %struct.bhndb_softc** %7, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc* %16, i32 %17)
  %19 = load %struct.bhndb_softc*, %struct.bhndb_softc** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = call %struct.bhndb_dw_alloc* @bhndb_io_resource_get_window(%struct.bhndb_softc* %19, i64 %20, i64 %21, i32* %14, i32* %22, i64* %23)
  store %struct.bhndb_dw_alloc* %24, %struct.bhndb_dw_alloc** %13, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %27 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %56, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %33 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %36 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %34, %39
  %41 = icmp sgt i64 %31, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %30
  %43 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %44 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %47 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %42, %30, %6
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %61, %62
  %64 = sub i64 %63, 1
  %65 = call i32 @panic(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load %struct.bhndb_softc*, %struct.bhndb_softc** %7, align 8
  %68 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bhndb_softc*, %struct.bhndb_softc** %7, align 8
  %71 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @bhndb_dw_set_addr(i32 %69, i32 %72, %struct.bhndb_dw_alloc* %73, i64 %74, i64 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %81, %82
  %84 = sub i64 %83, 1
  %85 = call i32 @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %84)
  br label %86

86:                                               ; preds = %79, %66
  br label %87

87:                                               ; preds = %86, %42
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %90 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  %94 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %92, %97
  %99 = load i64*, i64** %10, align 8
  store i64 %98, i64* %99, align 8
  %100 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %13, align 8
  ret %struct.bhndb_dw_alloc* %100
}

declare dso_local i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc*, i32) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_io_resource_get_window(%struct.bhndb_softc*, i64, i64, i32*, i32*, i64*) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i32 @bhndb_dw_set_addr(i32, i32, %struct.bhndb_dw_alloc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
