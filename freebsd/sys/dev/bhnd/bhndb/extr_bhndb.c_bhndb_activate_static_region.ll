; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_activate_static_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_activate_static_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bhndb_region = type { i64, %struct.bhndb_regwin* }
%struct.bhndb_regwin = type { i64, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"can't activate non-static region\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_softc*, %struct.bhndb_region*, i32, i32, i32, %struct.resource*)* @bhndb_activate_static_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_activate_static_region(%struct.bhndb_softc* %0, %struct.bhndb_region* %1, i32 %2, i32 %3, i32 %4, %struct.resource* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhndb_softc*, align 8
  %9 = alloca %struct.bhndb_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.resource*, align 8
  %15 = alloca %struct.bhndb_regwin*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %8, align 8
  store %struct.bhndb_region* %1, %struct.bhndb_region** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.resource* %5, %struct.resource** %13, align 8
  %20 = load %struct.bhndb_region*, %struct.bhndb_region** %9, align 8
  %21 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %20, i32 0, i32 1
  %22 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %21, align 8
  store %struct.bhndb_regwin* %22, %struct.bhndb_regwin** %15, align 8
  %23 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %15, align 8
  %24 = icmp ne %struct.bhndb_regwin* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %15, align 8
  %27 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @BHNDB_REGWIN_T_IS_STATIC(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %6
  %32 = phi i1 [ false, %6 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.resource*, %struct.resource** %13, align 8
  %36 = call i64 @rman_get_start(%struct.resource* %35)
  store i64 %36, i64* %17, align 8
  %37 = load %struct.resource*, %struct.resource** %13, align 8
  %38 = call i64 @rman_get_size(%struct.resource* %37)
  store i64 %38, i64* %18, align 8
  %39 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %40 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %15, align 8
  %45 = call %struct.resource* @bhndb_host_resource_for_regwin(i32 %43, %struct.bhndb_regwin* %44)
  store %struct.resource* %45, %struct.resource** %14, align 8
  %46 = load %struct.resource*, %struct.resource** %14, align 8
  %47 = icmp eq %struct.resource* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %7, align 4
  br label %77

50:                                               ; preds = %31
  %51 = load i64, i64* %17, align 8
  %52 = load %struct.bhndb_region*, %struct.bhndb_region** %9, align 8
  %53 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %16, align 8
  %56 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %15, align 8
  %57 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %16, align 8
  %61 = load %struct.resource*, %struct.resource** %13, align 8
  %62 = load %struct.resource*, %struct.resource** %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %18, align 8
  %65 = call i32 @bhndb_init_child_resource(%struct.resource* %61, %struct.resource* %62, i64 %63, i64 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* %19, align 4
  store i32 %69, i32* %7, align 4
  br label %77

70:                                               ; preds = %50
  %71 = load %struct.resource*, %struct.resource** %13, align 8
  %72 = call i32 @rman_activate_resource(%struct.resource* %71)
  store i32 %72, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %7, align 4
  br label %77

76:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %74, %68, %48
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @BHNDB_REGWIN_T_IS_STATIC(i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local %struct.resource* @bhndb_host_resource_for_regwin(i32, %struct.bhndb_regwin*) #1

declare dso_local i32 @bhndb_init_child_resource(%struct.resource*, %struct.resource*, i64, i64) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
