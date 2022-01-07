; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i32 }

@image_chunk_find.last = internal global %struct.chunk* null, align 8
@image_chunks = common dso_local global i32 0, align 4
@secsz = common dso_local global i32 0, align 4
@ch_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.chunk* (i64)* @image_chunk_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.chunk* @image_chunk_find(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.chunk*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.chunk*, %struct.chunk** @image_chunk_find.last, align 8
  %5 = icmp ne %struct.chunk* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.chunk*, %struct.chunk** @image_chunk_find.last, align 8
  %8 = getelementptr inbounds %struct.chunk, %struct.chunk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load %struct.chunk*, %struct.chunk** @image_chunk_find.last, align 8
  br label %16

14:                                               ; preds = %6, %1
  %15 = call %struct.chunk* @TAILQ_FIRST(i32* @image_chunks)
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi %struct.chunk* [ %13, %12 ], [ %15, %14 ]
  store %struct.chunk* %17, %struct.chunk** %3, align 8
  br label %18

18:                                               ; preds = %42, %16
  %19 = load %struct.chunk*, %struct.chunk** %3, align 8
  %20 = icmp ne %struct.chunk* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.chunk*, %struct.chunk** %3, align 8
  %23 = getelementptr inbounds %struct.chunk, %struct.chunk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.chunk*, %struct.chunk** %3, align 8
  %29 = getelementptr inbounds %struct.chunk, %struct.chunk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.chunk*, %struct.chunk** %3, align 8
  %32 = getelementptr inbounds %struct.chunk, %struct.chunk* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @secsz, align 4
  %35 = sdiv i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = load i64, i64* %2, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load %struct.chunk*, %struct.chunk** %3, align 8
  store %struct.chunk* %41, %struct.chunk** @image_chunk_find.last, align 8
  br label %46

42:                                               ; preds = %27, %21
  %43 = load %struct.chunk*, %struct.chunk** %3, align 8
  %44 = load i32, i32* @ch_list, align 4
  %45 = call %struct.chunk* @TAILQ_NEXT(%struct.chunk* %43, i32 %44)
  store %struct.chunk* %45, %struct.chunk** %3, align 8
  br label %18

46:                                               ; preds = %40, %18
  %47 = load %struct.chunk*, %struct.chunk** %3, align 8
  ret %struct.chunk* %47
}

declare dso_local %struct.chunk* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.chunk* @TAILQ_NEXT(%struct.chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
