; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@image_chunks = common dso_local global i32 0, align 4
@chunk_head = common dso_local global i32 0, align 4
@CH_TYPE_FILE = common dso_local global i64 0, align 8
@secsz = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ch_list = common dso_local global i32 0, align 4
@image_nchunks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @image_chunk_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_chunk_append(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chunk*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @chunk_head, align 4
  %12 = call %struct.chunk* @TAILQ_LAST(i32* @image_chunks, i32 %11)
  store %struct.chunk* %12, %struct.chunk** %10, align 8
  %13 = load %struct.chunk*, %struct.chunk** %10, align 8
  %14 = icmp ne %struct.chunk* %13, null
  br i1 %14, label %15, label %84

15:                                               ; preds = %4
  %16 = load %struct.chunk*, %struct.chunk** %10, align 8
  %17 = getelementptr inbounds %struct.chunk, %struct.chunk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CH_TYPE_FILE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.chunk*, %struct.chunk** %10, align 8
  %24 = getelementptr inbounds %struct.chunk, %struct.chunk* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.chunk*, %struct.chunk** %10, align 8
  %32 = getelementptr inbounds %struct.chunk, %struct.chunk* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.chunk*, %struct.chunk** %10, align 8
  %35 = getelementptr inbounds %struct.chunk, %struct.chunk* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @secsz, align 4
  %38 = sdiv i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %33, %39
  %41 = icmp eq i64 %30, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %29
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.chunk*, %struct.chunk** %10, align 8
  %45 = getelementptr inbounds %struct.chunk, %struct.chunk* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.chunk*, %struct.chunk** %10, align 8
  %50 = getelementptr inbounds %struct.chunk, %struct.chunk* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = icmp eq i64 %43, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %42
  %56 = load %struct.chunk*, %struct.chunk** %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @image_chunk_grow(%struct.chunk* %56, i64 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %118

62:                                               ; preds = %55
  %63 = load %struct.chunk*, %struct.chunk** %10, align 8
  %64 = getelementptr inbounds %struct.chunk, %struct.chunk* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.chunk*, %struct.chunk** %10, align 8
  %67 = getelementptr inbounds %struct.chunk, %struct.chunk* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @secsz, align 4
  %70 = sdiv i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %65, %71
  store i64 %72, i64* %6, align 8
  %73 = load %struct.chunk*, %struct.chunk** %10, align 8
  %74 = getelementptr inbounds %struct.chunk, %struct.chunk* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.chunk*, %struct.chunk** %10, align 8
  %79 = getelementptr inbounds %struct.chunk, %struct.chunk* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %62, %42, %29, %21
  br label %84

84:                                               ; preds = %83, %15, %4
  %85 = call %struct.chunk* @malloc(i32 40)
  store %struct.chunk* %85, %struct.chunk** %10, align 8
  %86 = load %struct.chunk*, %struct.chunk** %10, align 8
  %87 = icmp eq %struct.chunk* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %5, align 4
  br label %118

90:                                               ; preds = %84
  %91 = load %struct.chunk*, %struct.chunk** %10, align 8
  %92 = call i32 @memset(%struct.chunk* %91, i32 0, i32 40)
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.chunk*, %struct.chunk** %10, align 8
  %95 = getelementptr inbounds %struct.chunk, %struct.chunk* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %7, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.chunk*, %struct.chunk** %10, align 8
  %99 = getelementptr inbounds %struct.chunk, %struct.chunk* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* @CH_TYPE_FILE, align 8
  %101 = load %struct.chunk*, %struct.chunk** %10, align 8
  %102 = getelementptr inbounds %struct.chunk, %struct.chunk* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.chunk*, %struct.chunk** %10, align 8
  %105 = getelementptr inbounds %struct.chunk, %struct.chunk* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i64 %103, i64* %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.chunk*, %struct.chunk** %10, align 8
  %110 = getelementptr inbounds %struct.chunk, %struct.chunk* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  %113 = load %struct.chunk*, %struct.chunk** %10, align 8
  %114 = load i32, i32* @ch_list, align 4
  %115 = call i32 @TAILQ_INSERT_TAIL(i32* @image_chunks, %struct.chunk* %113, i32 %114)
  %116 = load i32, i32* @image_nchunks, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @image_nchunks, align 4
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %90, %88, %61
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.chunk* @TAILQ_LAST(i32*, i32) #1

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
