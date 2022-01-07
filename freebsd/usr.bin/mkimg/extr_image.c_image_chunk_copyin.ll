; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_chunk_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i64, i64, i32)* @image_chunk_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_chunk_copyin(i64 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @secsz, align 8
  %17 = add i64 %15, %16
  %18 = sub i64 %17, 1
  %19 = load i64, i64* @secsz, align 8
  %20 = sub i64 %19, 1
  %21 = xor i64 %20, -1
  %22 = and i64 %18, %21
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %45, %5
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %57

31:                                               ; preds = %29
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @is_empty_sector(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @image_chunk_skipto(i64 %37)
  store i32 %38, i32* %12, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @secsz, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @image_chunk_append(i64 %40, i64 %41, i64 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* @secsz, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %48
  store i32* %50, i32** %11, align 8
  %51 = load i64, i64* @secsz, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* @secsz, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %23

57:                                               ; preds = %29
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i64 @is_empty_sector(i32*) #1

declare dso_local i32 @image_chunk_skipto(i64) #1

declare dso_local i32 @image_chunk_append(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
