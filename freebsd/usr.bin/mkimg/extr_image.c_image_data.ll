; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i64, i32 }

@CH_TYPE_ZEROES = common dso_local global i64 0, align 8
@secsz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_data(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.chunk*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %8

8:                                                ; preds = %2, %38
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.chunk* @image_chunk_find(i64 %9)
  store %struct.chunk* %10, %struct.chunk** %6, align 8
  %11 = load %struct.chunk*, %struct.chunk** %6, align 8
  %12 = icmp eq %struct.chunk* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %8
  %15 = load %struct.chunk*, %struct.chunk** %6, align 8
  %16 = getelementptr inbounds %struct.chunk, %struct.chunk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CH_TYPE_ZEROES, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.chunk*, %struct.chunk** %6, align 8
  %23 = getelementptr inbounds %struct.chunk, %struct.chunk* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.chunk*, %struct.chunk** %6, align 8
  %26 = getelementptr inbounds %struct.chunk, %struct.chunk* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @secsz, align 4
  %29 = sdiv i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %24, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %33, %34
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

38:                                               ; preds = %21
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %4, align 8
  br label %8

45:                                               ; preds = %37, %20, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.chunk* @image_chunk_find(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
