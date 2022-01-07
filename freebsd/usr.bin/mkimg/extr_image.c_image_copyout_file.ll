; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyout_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyout_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secsz = common dso_local global i64 0, align 8
@image_swap_pgsz = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64)* @image_copyout_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_copyout_file(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @secsz, align 8
  %17 = load i64, i64* @image_swap_pgsz, align 8
  %18 = mul i64 %16, %17
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %55, %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %12, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i8* @image_file_map(i32 %32, i64 %33, i64 %34, i64* %15)
  store i8* %35, i8** %10, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %5, align 4
  br label %63

40:                                               ; preds = %30
  %41 = load i64, i64* %15, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %13, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @image_copyout_memory(i32 %44, i64 %45, i8* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @image_file_unmap(i8* %48, i64 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %40
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %19

62:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %53, %38
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i8* @image_file_map(i32, i64, i64, i64*) #1

declare dso_local i32 @image_copyout_memory(i32, i64, i8*) #1

declare dso_local i32 @image_file_unmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
