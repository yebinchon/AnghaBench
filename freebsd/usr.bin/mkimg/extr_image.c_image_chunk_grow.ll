; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64 }

@SIZE_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.chunk*, i64)* @image_chunk_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @image_chunk_grow(%struct.chunk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.chunk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.chunk* %0, %struct.chunk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.chunk*, %struct.chunk** %4, align 8
  %9 = getelementptr inbounds %struct.chunk, %struct.chunk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.chunk*, %struct.chunk** %4, align 8
  %15 = getelementptr inbounds %struct.chunk, %struct.chunk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.chunk*, %struct.chunk** %4, align 8
  %21 = getelementptr inbounds %struct.chunk, %struct.chunk* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i64 0, i64* %3, align 8
  br label %42

22:                                               ; preds = %2
  %23 = load i8*, i8** @SIZE_MAX, align 8
  %24 = load %struct.chunk*, %struct.chunk** %4, align 8
  %25 = getelementptr inbounds %struct.chunk, %struct.chunk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 0, %26
  %28 = getelementptr i8, i8* %23, i64 %27
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** @SIZE_MAX, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.chunk*, %struct.chunk** %4, align 8
  %38 = getelementptr inbounds %struct.chunk, %struct.chunk* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %22, %18
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
