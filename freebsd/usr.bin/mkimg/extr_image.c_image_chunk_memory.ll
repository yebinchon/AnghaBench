; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@secsz = common dso_local global i64 0, align 8
@image_chunks = common dso_local global i32 0, align 4
@ch_list = common dso_local global i32 0, align 4
@image_nchunks = common dso_local global i32 0, align 4
@CH_TYPE_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.chunk* (%struct.chunk*, i64)* @image_chunk_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.chunk* @image_chunk_memory(%struct.chunk* %0, i64 %1) #0 {
  %3 = alloca %struct.chunk*, align 8
  %4 = alloca %struct.chunk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.chunk*, align 8
  %7 = alloca i8*, align 8
  store %struct.chunk* %0, %struct.chunk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @secsz, align 8
  %9 = call i8* @calloc(i32 1, i64 %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.chunk* null, %struct.chunk** %3, align 8
  br label %101

13:                                               ; preds = %2
  %14 = load %struct.chunk*, %struct.chunk** %4, align 8
  %15 = getelementptr inbounds %struct.chunk, %struct.chunk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = call %struct.chunk* @malloc(i32 32)
  store %struct.chunk* %20, %struct.chunk** %6, align 8
  %21 = load %struct.chunk*, %struct.chunk** %6, align 8
  %22 = icmp eq %struct.chunk* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @free(i8* %24)
  store %struct.chunk* null, %struct.chunk** %3, align 8
  br label %101

26:                                               ; preds = %19
  %27 = load %struct.chunk*, %struct.chunk** %6, align 8
  %28 = load %struct.chunk*, %struct.chunk** %4, align 8
  %29 = call i32 @memcpy(%struct.chunk* %27, %struct.chunk* %28, i32 32)
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.chunk*, %struct.chunk** %4, align 8
  %32 = getelementptr inbounds %struct.chunk, %struct.chunk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load i64, i64* @secsz, align 8
  %36 = mul nsw i64 %34, %35
  %37 = load %struct.chunk*, %struct.chunk** %4, align 8
  %38 = getelementptr inbounds %struct.chunk, %struct.chunk* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.chunk*, %struct.chunk** %6, align 8
  %41 = getelementptr inbounds %struct.chunk, %struct.chunk* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.chunk*, %struct.chunk** %4, align 8
  %43 = getelementptr inbounds %struct.chunk, %struct.chunk* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.chunk*, %struct.chunk** %6, align 8
  %46 = getelementptr inbounds %struct.chunk, %struct.chunk* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.chunk*, %struct.chunk** %4, align 8
  %50 = load %struct.chunk*, %struct.chunk** %6, align 8
  %51 = load i32, i32* @ch_list, align 4
  %52 = call i32 @TAILQ_INSERT_AFTER(i32* @image_chunks, %struct.chunk* %49, %struct.chunk* %50, i32 %51)
  %53 = load i32, i32* @image_nchunks, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @image_nchunks, align 4
  %55 = load %struct.chunk*, %struct.chunk** %6, align 8
  store %struct.chunk* %55, %struct.chunk** %4, align 8
  br label %56

56:                                               ; preds = %26, %13
  %57 = load %struct.chunk*, %struct.chunk** %4, align 8
  %58 = getelementptr inbounds %struct.chunk, %struct.chunk* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @secsz, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %56
  %63 = call %struct.chunk* @malloc(i32 32)
  store %struct.chunk* %63, %struct.chunk** %6, align 8
  %64 = load %struct.chunk*, %struct.chunk** %6, align 8
  %65 = icmp eq %struct.chunk* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @free(i8* %67)
  store %struct.chunk* null, %struct.chunk** %3, align 8
  br label %101

69:                                               ; preds = %62
  %70 = load %struct.chunk*, %struct.chunk** %6, align 8
  %71 = load %struct.chunk*, %struct.chunk** %4, align 8
  %72 = call i32 @memcpy(%struct.chunk* %70, %struct.chunk* %71, i32 32)
  %73 = load i64, i64* @secsz, align 8
  %74 = load %struct.chunk*, %struct.chunk** %4, align 8
  %75 = getelementptr inbounds %struct.chunk, %struct.chunk* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.chunk*, %struct.chunk** %6, align 8
  %77 = getelementptr inbounds %struct.chunk, %struct.chunk* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* @secsz, align 8
  %81 = load %struct.chunk*, %struct.chunk** %6, align 8
  %82 = getelementptr inbounds %struct.chunk, %struct.chunk* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.chunk*, %struct.chunk** %4, align 8
  %86 = load %struct.chunk*, %struct.chunk** %6, align 8
  %87 = load i32, i32* @ch_list, align 4
  %88 = call i32 @TAILQ_INSERT_AFTER(i32* @image_chunks, %struct.chunk* %85, %struct.chunk* %86, i32 %87)
  %89 = load i32, i32* @image_nchunks, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @image_nchunks, align 4
  br label %91

91:                                               ; preds = %69, %56
  %92 = load i32, i32* @CH_TYPE_MEMORY, align 4
  %93 = load %struct.chunk*, %struct.chunk** %4, align 8
  %94 = getelementptr inbounds %struct.chunk, %struct.chunk* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.chunk*, %struct.chunk** %4, align 8
  %97 = getelementptr inbounds %struct.chunk, %struct.chunk* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.chunk*, %struct.chunk** %4, align 8
  store %struct.chunk* %100, %struct.chunk** %3, align 8
  br label %101

101:                                              ; preds = %91, %66, %23, %12
  %102 = load %struct.chunk*, %struct.chunk** %3, align 8
  ret %struct.chunk* %102
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local %struct.chunk* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(%struct.chunk*, %struct.chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.chunk*, %struct.chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
