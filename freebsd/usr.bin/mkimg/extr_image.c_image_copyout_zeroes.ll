; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyout_zeroes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyout_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@image_copyout_zeroes.zeroes = internal global i32* null, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@secsz = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_copyout_zeroes(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @SEEK_CUR, align 4
  %12 = call i32 @lseek(i32 %8, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load i32*, i32** @image_copyout_zeroes.zeroes, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* @secsz, align 8
  %20 = call i32* @calloc(i32 1, i64 %19)
  store i32* %20, i32** @image_copyout_zeroes.zeroes, align 8
  %21 = load i32*, i32** @image_copyout_zeroes.zeroes, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %15
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i64, i64* %5, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @secsz, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @secsz, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  store i64 %39, i64* %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i32*, i32** @image_copyout_zeroes.zeroes, align 8
  %43 = call i32 @image_copyout_memory(i32 %40, i64 %41, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %38
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %27

52:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %23, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @image_copyout_memory(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
