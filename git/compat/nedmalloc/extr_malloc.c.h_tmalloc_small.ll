; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_tmalloc_small.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_tmalloc_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@MIN_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i64)* @tmalloc_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tmalloc_small(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @least_bit(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @compute_bit2idx(i32 %17, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @treebin_at(%struct.TYPE_10__* %20, i32 %21)
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @chunksize(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %43, %2
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @leftmost_child(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @chunksize(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %32
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ok_address(%struct.TYPE_10__* %45, i32 %46)
  %48 = call i64 @RTCHECK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @chunk_plus_offset(i32 %51, i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @chunksize(i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %56, %57
  %59 = icmp eq i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ok_next(i32 %62, i32 %63)
  %65 = call i64 @RTCHECK(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %50
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @unlink_large_chunk(%struct.TYPE_10__* %68, i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @MIN_CHUNK_SIZE, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %77, %78
  %80 = call i32 @set_inuse_and_pinuse(%struct.TYPE_10__* %75, i32 %76, i64 %79)
  br label %93

81:                                               ; preds = %67
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_10__* %82, i32 %83, i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @set_size_and_pinuse_of_free_chunk(i32 %86, i64 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @replace_dv(%struct.TYPE_10__* %89, i32 %90, i64 %91)
  br label %93

93:                                               ; preds = %81, %74
  %94 = load i32, i32* %7, align 4
  %95 = call i8* @chunk2mem(i32 %94)
  store i8* %95, i8** %3, align 8
  br label %100

96:                                               ; preds = %50
  br label %97

97:                                               ; preds = %96, %44
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = call i32 @CORRUPTION_ERROR_ACTION(%struct.TYPE_10__* %98)
  store i8* null, i8** %3, align 8
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** %3, align 8
  ret i8* %101
}

declare dso_local i32 @least_bit(i32) #1

declare dso_local i32 @compute_bit2idx(i32, i32) #1

declare dso_local i32* @treebin_at(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @chunksize(i32) #1

declare dso_local i32 @leftmost_child(i32) #1

declare dso_local i64 @RTCHECK(i32) #1

declare dso_local i32 @ok_address(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @chunk_plus_offset(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ok_next(i32, i32) #1

declare dso_local i32 @unlink_large_chunk(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_inuse_and_pinuse(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_free_chunk(i32, i64) #1

declare dso_local i32 @replace_dv(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i8* @chunk2mem(i32) #1

declare dso_local i32 @CORRUPTION_ERROR_ACTION(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
