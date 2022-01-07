; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vfta_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vfta_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_set_vfta_generic\00", align 1
@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_set_vfta_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 4095
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 63
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %23, i64* %6, align 8
  br label %76

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %25, 32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 32
  %29 = shl i32 1, %28
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @IXGBE_VFTA(i32 %31)
  %33 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %14, align 4
  %38 = xor i32 %37, -1
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @ixgbe_set_vlvf_generic(%struct.ixgbe_hw* %48, i32 %49, i32 %50, i32 %51, i32* %13, i32 %52, i32 %53)
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @IXGBE_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %41
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %15, align 8
  store i64 %63, i64* %6, align 8
  br label %76

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @IXGBE_VFTA(i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %74, %62, %22
  %77 = load i64, i64* %6, align 8
  ret i64 %77
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

declare dso_local i64 @ixgbe_set_vlvf_generic(%struct.ixgbe_hw*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
