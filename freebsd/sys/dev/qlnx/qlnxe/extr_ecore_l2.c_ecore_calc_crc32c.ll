; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_calc_crc32c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_calc_crc32c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSAL_NULL = common dso_local global i64* null, align 8
@CRC32_POLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64)* @ecore_calc_crc32c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_calc_crc32c(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64*, i64** @OSAL_NULL, align 8
  %16 = icmp eq i64* %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = srem i64 %21, 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %17, %3
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %4, align 8
  br label %66

26:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %57, %31
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 8
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = ashr i64 %40, 31
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = shl i64 %42, 1
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = ashr i64 %45, %46
  %48 = and i64 1, %47
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @CRC32_POLY, align 8
  %53 = xor i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = or i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %50, %39
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %36

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %27

64:                                               ; preds = %27
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %24
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
