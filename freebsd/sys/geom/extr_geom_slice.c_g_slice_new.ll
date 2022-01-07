; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.TYPE_2__*, i32*, i32, i32, i32, i32, %struct.g_slicer* }
%struct.TYPE_2__ = type { i32* }
%struct.g_slicer = type { i8*, i32* }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@g_slice_start = common dso_local global i32 0, align 4
@g_slice_access = common dso_local global i32 0, align 4
@g_slice_orphan = common dso_local global i32 0, align 4
@g_slice_spoiled = common dso_local global i32 0, align 4
@g_slice_dumpconf = common dso_local global i32* null, align 8
@g_slice_destroy_geom = common dso_local global i32* null, align 8
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_geom* @g_slice_new(%struct.g_class* %0, i32 %1, %struct.g_provider* %2, %struct.g_consumer** %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_class*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.g_provider*, align 8
  %12 = alloca %struct.g_consumer**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.g_geom*, align 8
  %17 = alloca %struct.g_slicer*, align 8
  %18 = alloca %struct.g_consumer*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.g_provider* %2, %struct.g_provider** %11, align 8
  store %struct.g_consumer** %3, %struct.g_consumer*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = call i32 (...) @g_topology_assert()
  %22 = load i8*, i8** %13, align 8
  %23 = bitcast i8* %22 to i8**
  store i8** %23, i8*** %19, align 8
  %24 = load %struct.g_class*, %struct.g_class** %9, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.g_geom* %28, %struct.g_geom** %16, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.g_slicer* @g_slice_alloc(i32 %29, i32 %30)
  store %struct.g_slicer* %31, %struct.g_slicer** %17, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load %struct.g_slicer*, %struct.g_slicer** %17, align 8
  %34 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.g_slicer*, %struct.g_slicer** %17, align 8
  %36 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %37 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %36, i32 0, i32 6
  store %struct.g_slicer* %35, %struct.g_slicer** %37, align 8
  %38 = load i32, i32* @g_slice_start, align 4
  %39 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %40 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @g_slice_access, align 4
  %42 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %43 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @g_slice_orphan, align 4
  %45 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %46 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @g_slice_spoiled, align 4
  %48 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %49 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %51 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %7
  %55 = load i32*, i32** @g_slice_dumpconf, align 8
  %56 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %57 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %54, %7
  %59 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %60 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32*, i32** @g_slice_destroy_geom, align 8
  %67 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %68 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* %66, i32** %70, align 8
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %73 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %72)
  store %struct.g_consumer* %73, %struct.g_consumer** %18, align 8
  %74 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %75 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %78 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %82 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %83 = call i32 @g_attach(%struct.g_consumer* %81, %struct.g_provider* %82)
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %88 = call i32 @g_access(%struct.g_consumer* %87, i32 1, i32 0, i32 0)
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %86, %71
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %94 = load i32, i32* @ENXIO, align 4
  %95 = call i32 @g_wither_geom(%struct.g_geom* %93, i32 %94)
  store %struct.g_geom* null, %struct.g_geom** %8, align 8
  br label %108

96:                                               ; preds = %89
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.g_slicer*, %struct.g_slicer** %17, align 8
  %101 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %19, align 8
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %106 = load %struct.g_consumer**, %struct.g_consumer*** %12, align 8
  store %struct.g_consumer* %105, %struct.g_consumer** %106, align 8
  %107 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  store %struct.g_geom* %107, %struct.g_geom** %8, align 8
  br label %108

108:                                              ; preds = %104, %92
  %109 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  ret %struct.g_geom* %109
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i32) #1

declare dso_local %struct.g_slicer* @g_slice_alloc(i32, i32) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
