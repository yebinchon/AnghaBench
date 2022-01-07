; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_internal_mallinfo.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_internal_mallinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mallinfo = type { i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, i32 }

@SIZE_T_ONE = common dso_local global i64 0, align 8
@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@FENCEPOST_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mallinfo*, %struct.TYPE_16__*)* @internal_mallinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_mallinfo(%struct.mallinfo* noalias sret %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %3, align 8
  %10 = bitcast %struct.mallinfo* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 96, i1 false)
  %11 = call i32 (...) @ensure_initialization()
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call i32 @PREACTION(%struct.TYPE_16__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %110, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = call i32 @check_malloc_state(%struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = call i64 @is_initialized(%struct.TYPE_16__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %15
  %22 = load i64, i64* @SIZE_T_ONE, align 8
  store i64 %22, i64* %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 4
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %7, align 8
  br label %31

31:                                               ; preds = %76, %21
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_18__* @align_as_chunk(i32 %37)
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %8, align 8
  br label %39

39:                                               ; preds = %73, %34
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = call i64 @segment_holds(%struct.TYPE_17__* %40, %struct.TYPE_18__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = icmp ne %struct.TYPE_18__* %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FENCEPOST_HEAD, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %44, %39
  %57 = phi i1 [ false, %44 ], [ false, %39 ], [ %55, %50 ]
  br i1 %57, label %58, label %76

58:                                               ; preds = %56
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = call i64 @chunksize(%struct.TYPE_18__* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = call i32 @cinuse(%struct.TYPE_18__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %67, %58
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = call %struct.TYPE_18__* @next_chunk(%struct.TYPE_18__* %74)
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %8, align 8
  br label %39

76:                                               ; preds = %56
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %7, align 8
  br label %31

80:                                               ; preds = %31
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %87, %88
  %90 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 6
  store i64 %89, i64* %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 5
  store i32 %93, i32* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 4
  store i64 %99, i64* %100, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 2
  store i64 %101, i64* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.mallinfo, %struct.mallinfo* %0, i32 0, i32 3
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %80, %15
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = call i32 @POSTACTION(%struct.TYPE_16__* %108)
  br label %110

110:                                              ; preds = %107, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ensure_initialization(...) #2

declare dso_local i32 @PREACTION(%struct.TYPE_16__*) #2

declare dso_local i32 @check_malloc_state(%struct.TYPE_16__*) #2

declare dso_local i64 @is_initialized(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_18__* @align_as_chunk(i32) #2

declare dso_local i64 @segment_holds(%struct.TYPE_17__*, %struct.TYPE_18__*) #2

declare dso_local i64 @chunksize(%struct.TYPE_18__*) #2

declare dso_local i32 @cinuse(%struct.TYPE_18__*) #2

declare dso_local %struct.TYPE_18__* @next_chunk(%struct.TYPE_18__*) #2

declare dso_local i32 @POSTACTION(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
