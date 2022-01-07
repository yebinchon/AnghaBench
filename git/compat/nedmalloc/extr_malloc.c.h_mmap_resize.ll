; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mmap_resize.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mmap_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }

@SIZE_T_SIZE = common dso_local global i64 0, align 8
@mparams = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@IS_MMAPPED_BIT = common dso_local global i64 0, align 8
@MMAP_FOOT_PAD = common dso_local global i64 0, align 8
@SIX_SIZE_T_SIZES = common dso_local global i64 0, align 8
@CHUNK_ALIGN_MASK = common dso_local global i64 0, align 8
@CMFAIL = common dso_local global i8* null, align 8
@CINUSE_BIT = common dso_local global i64 0, align 8
@FENCEPOST_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, %struct.TYPE_16__*, i64)* @mmap_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @mmap_resize(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = call i64 @chunksize(%struct.TYPE_16__* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @is_small(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %131

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SIZE_T_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @mparams, i32 0, i32 0), align 4
  %32 = shl i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp ule i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %4, align 8
  br label %131

37:                                               ; preds = %27, %21
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IS_MMAPPED_BIT, align 8
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* @MMAP_FOOT_PAD, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SIX_SIZE_T_SIZES, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* @CHUNK_ALIGN_MASK, align 8
  %53 = add i64 %51, %52
  %54 = call i64 @mmap_align(i64 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = bitcast %struct.TYPE_16__* %55 to i8*
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @CALL_MREMAP(i8* %59, i64 %60, i64 %61, i32 1)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** @CMFAIL, align 8
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %129

67:                                               ; preds = %37
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = bitcast i8* %70 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %13, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %72, %73
  %75 = load i64, i64* @MMAP_FOOT_PAD, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @CINUSE_BIT, align 8
  %79 = or i64 %77, %78
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @mark_inuse_foot(%struct.TYPE_15__* %82, %struct.TYPE_16__* %83, i64 %84)
  %86 = load i32, i32* @FENCEPOST_HEAD, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call %struct.TYPE_14__* @chunk_plus_offset(%struct.TYPE_16__* %87, i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @SIZE_T_SIZE, align 8
  %94 = add i64 %92, %93
  %95 = call %struct.TYPE_14__* @chunk_plus_offset(%struct.TYPE_16__* %91, i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ult i8* %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %67
  %103 = load i8*, i8** %12, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %102, %67
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = sub i64 %107, %108
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %106
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %106
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %127 = call i32 @check_mmapped_chunk(%struct.TYPE_15__* %125, %struct.TYPE_16__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %4, align 8
  br label %131

129:                                              ; preds = %37
  br label %130

130:                                              ; preds = %129
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %131

131:                                              ; preds = %130, %124, %35, %20
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %132
}

declare dso_local i64 @chunksize(%struct.TYPE_16__*) #1

declare dso_local i64 @is_small(i64) #1

declare dso_local i64 @mmap_align(i64) #1

declare dso_local i64 @CALL_MREMAP(i8*, i64, i64, i32) #1

declare dso_local i32 @mark_inuse_foot(%struct.TYPE_15__*, %struct.TYPE_16__*, i64) #1

declare dso_local %struct.TYPE_14__* @chunk_plus_offset(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @check_mmapped_chunk(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
