; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @cyspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyspeed(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 150000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 -1, i32* %4, align 4
  br label %81

23:                                               ; preds = %19
  store i32 4, i32* %12, align 4
  store i32 2048, i32* %11, align 4
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %30, %31
  %33 = icmp sgt i32 %32, 63
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %41

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 2
  store i32 %40, i32* %11, align 4
  br label %24

41:                                               ; preds = %34, %24
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sdiv i32 %42, %43
  %45 = mul nsw i32 %44, 2
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 255
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 255, i32* %10, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %60, %62
  %64 = mul nsw i64 %63, 2000
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = sdiv i64 %64, %66
  %68 = add nsw i64 %67, 1
  %69 = sdiv i64 %68, 2
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, -30
  br i1 %72, label %76, label %73

73:                                               ; preds = %53
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 30
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %53
  store i32 -1, i32* %4, align 4
  br label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %76, %22, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
