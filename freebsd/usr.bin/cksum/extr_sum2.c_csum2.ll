; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cksum/extr_sum2.c_csum2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cksum/extr_sum2.c_csum2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum2(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca [8192 x i64], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [8192 x i64], [8192 x i64]* %12, i64 0, i64 0
  %16 = call i32 @read(i32 %14, i64* %15, i32 65536)
  store i32 %16, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds [8192 x i64], [8192 x i64]* %12, i64 0, i64 0
  store i64* %22, i64** %11, align 8
  br label %23

23:                                               ; preds = %34, %18
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i64*, i64** %11, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %11, align 8
  br label %23

37:                                               ; preds = %23
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65535
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 16
  %47 = add nsw i32 %44, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 16
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %42, %41
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @read(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
