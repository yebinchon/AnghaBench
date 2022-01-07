; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_finish_hot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_finish_hot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, %struct.g_geom* }
%struct.g_geom = type { i32, %struct.g_slicer* }
%struct.g_slicer = type { %struct.g_slice* }
%struct.g_slice = type { i64, i64 }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"NULL bio_to in g_slice_finish_hot(%p)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"NULL bio_from in g_slice_finish_hot(%p)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"NULL consumer in g_slice_finish_hot(%p)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_slice_finish_hot(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_slicer*, align 8
  %7 = alloca %struct.g_slice*, align 8
  %8 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  %13 = zext i1 %12 to i32
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = bitcast %struct.bio* %14 to i8*
  %16 = call i32 @KASSERT(i32 %13, i8* %15)
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = bitcast %struct.bio* %22 to i8*
  %24 = call i32 @KASSERT(i32 %21, i8* %23)
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.g_geom*, %struct.g_geom** %28, align 8
  store %struct.g_geom* %29, %struct.g_geom** %4, align 8
  %30 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %31 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %30, i32 0, i32 1
  %32 = load %struct.g_slicer*, %struct.g_slicer** %31, align 8
  store %struct.g_slicer* %32, %struct.g_slicer** %6, align 8
  %33 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %34 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %33, i32 0, i32 0
  %35 = call %struct.g_consumer* @LIST_FIRST(i32* %34)
  store %struct.g_consumer* %35, %struct.g_consumer** %5, align 8
  %36 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %37 = icmp ne %struct.g_consumer* %36, null
  %38 = zext i1 %37 to i32
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = bitcast %struct.bio* %39 to i8*
  %41 = call i32 @KASSERT(i32 %38, i8* %40)
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  %47 = load %struct.g_slicer*, %struct.g_slicer** %6, align 8
  %48 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %47, i32 0, i32 0
  %49 = load %struct.g_slice*, %struct.g_slice** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %49, i64 %51
  store %struct.g_slice* %52, %struct.g_slice** %7, align 8
  %53 = load %struct.bio*, %struct.bio** %2, align 8
  %54 = call %struct.bio* @g_clone_bio(%struct.bio* %53)
  store %struct.bio* %54, %struct.bio** %3, align 8
  %55 = load %struct.bio*, %struct.bio** %3, align 8
  %56 = icmp eq %struct.bio* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %1
  %58 = load %struct.bio*, %struct.bio** %2, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @g_io_deliver(%struct.bio* %58, i32 %59)
  br label %97

61:                                               ; preds = %1
  %62 = load %struct.bio*, %struct.bio** %3, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bio*, %struct.bio** %3, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.g_slice*, %struct.g_slice** %7, align 8
  %70 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %61
  %74 = load %struct.g_slice*, %struct.g_slice** %7, align 8
  %75 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bio*, %struct.bio** %3, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.bio*, %struct.bio** %3, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %73, %61
  %84 = load i32, i32* @g_std_done, align 4
  %85 = load %struct.bio*, %struct.bio** %3, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.g_slice*, %struct.g_slice** %7, align 8
  %88 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bio*, %struct.bio** %3, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.bio*, %struct.bio** %3, align 8
  %95 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %96 = call i32 @g_io_request(%struct.bio* %94, %struct.g_consumer* %95)
  br label %97

97:                                               ; preds = %83, %57
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
