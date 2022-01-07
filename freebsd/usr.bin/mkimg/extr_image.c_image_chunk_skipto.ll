; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_skipto.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_skipto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i64, i64 }

@image_chunks = common dso_local global i32 0, align 4
@chunk_head = common dso_local global i32 0, align 4
@secsz = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@CH_TYPE_ZEROES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ch_list = common dso_local global i32 0, align 4
@image_nchunks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @image_chunk_skipto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_chunk_skipto(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.chunk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @chunk_head, align 4
  %8 = call %struct.chunk* @TAILQ_LAST(i32* @image_chunks, i32 %7)
  store %struct.chunk* %8, %struct.chunk** %4, align 8
  %9 = load %struct.chunk*, %struct.chunk** %4, align 8
  %10 = icmp ne %struct.chunk* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.chunk*, %struct.chunk** %4, align 8
  %13 = getelementptr inbounds %struct.chunk, %struct.chunk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.chunk*, %struct.chunk** %4, align 8
  %16 = getelementptr inbounds %struct.chunk, %struct.chunk* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @secsz, align 8
  %19 = sdiv i64 %17, %18
  %20 = add nsw i64 %14, %19
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %11
  %23 = phi i64 [ %20, %11 ], [ 0, %21 ]
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp sle i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %97

33:                                               ; preds = %22
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* @SIZE_MAX, align 8
  %38 = load i64, i64* @secsz, align 8
  %39 = sdiv i64 %37, %38
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EFBIG, align 4
  store i32 %42, i32* %2, align 4
  br label %97

43:                                               ; preds = %33
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i64, i64* @secsz, align 8
  %48 = mul nsw i64 %46, %47
  store i64 %48, i64* %6, align 8
  %49 = load %struct.chunk*, %struct.chunk** %4, align 8
  %50 = icmp ne %struct.chunk* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %43
  %52 = load %struct.chunk*, %struct.chunk** %4, align 8
  %53 = getelementptr inbounds %struct.chunk, %struct.chunk* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CH_TYPE_ZEROES, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load %struct.chunk*, %struct.chunk** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @image_chunk_grow(%struct.chunk* %58, i64 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %97

64:                                               ; preds = %57
  %65 = load %struct.chunk*, %struct.chunk** %4, align 8
  %66 = getelementptr inbounds %struct.chunk, %struct.chunk* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.chunk*, %struct.chunk** %4, align 8
  %69 = getelementptr inbounds %struct.chunk, %struct.chunk* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @secsz, align 8
  %72 = sdiv i64 %70, %71
  %73 = add nsw i64 %67, %72
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %64, %51, %43
  %75 = call %struct.chunk* @malloc(i32 24)
  store %struct.chunk* %75, %struct.chunk** %4, align 8
  %76 = load %struct.chunk*, %struct.chunk** %4, align 8
  %77 = icmp eq %struct.chunk* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %2, align 4
  br label %97

80:                                               ; preds = %74
  %81 = load %struct.chunk*, %struct.chunk** %4, align 8
  %82 = call i32 @memset(%struct.chunk* %81, i32 0, i32 24)
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.chunk*, %struct.chunk** %4, align 8
  %85 = getelementptr inbounds %struct.chunk, %struct.chunk* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.chunk*, %struct.chunk** %4, align 8
  %88 = getelementptr inbounds %struct.chunk, %struct.chunk* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* @CH_TYPE_ZEROES, align 8
  %90 = load %struct.chunk*, %struct.chunk** %4, align 8
  %91 = getelementptr inbounds %struct.chunk, %struct.chunk* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.chunk*, %struct.chunk** %4, align 8
  %93 = load i32, i32* @ch_list, align 4
  %94 = call i32 @TAILQ_INSERT_TAIL(i32* @image_chunks, %struct.chunk* %92, i32 %93)
  %95 = load i32, i32* @image_nchunks, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @image_nchunks, align 4
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %80, %78, %63, %41, %32
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.chunk* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @image_chunk_grow(%struct.chunk*, i64) #1

declare dso_local %struct.chunk* @malloc(i32) #1

declare dso_local i32 @memset(%struct.chunk*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
