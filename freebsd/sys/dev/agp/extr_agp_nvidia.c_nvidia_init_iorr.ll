; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_nvidia_init_iorr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_nvidia_init_iorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD_K7_NUM_IORR = common dso_local global i32 0, align 4
@IORR_BASE0 = common dso_local global i64 0, align 8
@IORR_MASK0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nvidia_init_iorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_init_iorr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i64, i64* @IORR_BASE0, align 8
  %18 = load i32, i32* %9, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @rdmsr(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* @IORR_MASK0, align 8
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i32 @rdmsr(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 4294963200
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, -4096
  %34 = zext i32 %33 to i64
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %48

37:                                               ; preds = %16
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 2048
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %12

48:                                               ; preds = %36, %12
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %93

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, -4096
  %63 = or i32 %62, 24
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @rounddown2(i32 -4096, i32 %64)
  %66 = sext i32 %65 to i64
  %67 = or i64 64424509440, %66
  %68 = or i64 %67, 2048
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i64, i64* @IORR_BASE0, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @wrmsr(i64 %74, i32 %75)
  %77 = load i64, i64* @IORR_MASK0, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @wrmsr(i64 %81, i32 %82)
  %84 = load i64, i64* @SYSCFG, align 8
  %85 = call i32 @rdmsr(i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = or i64 %87, 1048576
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* @SYSCFG, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @wrmsr(i64 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %60, %57
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @rdmsr(i64) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @wrmsr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
