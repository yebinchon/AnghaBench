; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_update_threshold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_update_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_uptime = common dso_local global i32 0, align 4
@CMCI = common dso_local global i32 0, align 4
@cmc_throttle = common dso_local global i32 0, align 4
@POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @update_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_threshold(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @time_uptime, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CMCI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @cmc_throttle, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = shl i32 %39, 1
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %38, %34, %30, %26
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %80

45:                                               ; preds = %23, %6
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @POLLED, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %80

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @cmc_throttle, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %80

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @cmc_throttle, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %14, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %76

69:                                               ; preds = %60
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75, %68
  br label %78

77:                                               ; preds = %57
  store i32 1, i32* %15, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %55, %49, %43
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
