; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5112.c_ar5212GetLowerUpperIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5112.c_ar5212GetLowerUpperIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32*, i32*)* @ar5212GetLowerUpperIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212GetLowerUpperIndex(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  br label %82

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %35, i32* %37, align 4
  br label %82

38:                                               ; preds = %27
  %39 = load i32*, i32** %7, align 8
  store i32* %39, i32** %13, align 8
  br label %40

40:                                               ; preds = %79, %38
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %56, i32* %58, align 4
  br label %82

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %82

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %13, align 8
  br label %40

82:                                               ; preds = %24, %33, %49, %65, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
