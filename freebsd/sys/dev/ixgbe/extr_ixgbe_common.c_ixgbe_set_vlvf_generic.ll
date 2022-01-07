; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vlvf_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vlvf_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_set_vlvf_generic\00", align 1
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_VT_CTL = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_VT_ENABLE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_VLVF_VIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vlvf_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 4095
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 63
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %7
  %25 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %25, i32* %8, align 4
  br label %125

26:                                               ; preds = %21
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %28 = load i32, i32* @IXGBE_VT_CTL, align 4
  %29 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %28)
  %30 = load i32, i32* @IXGBE_VT_CTL_VT_ENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %34, i32* %8, align 4
  br label %125

35:                                               ; preds = %26
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw* %36, i32 %37, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %8, align 4
  br label %125

44:                                               ; preds = %35
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %46 = load i32, i32* %17, align 4
  %47 = mul nsw i32 %46, 2
  %48 = load i32, i32* %11, align 4
  %49 = sdiv i32 %48, 32
  %50 = add nsw i32 %47, %49
  %51 = call i32 @IXGBE_VLVFB(i32 %50)
  %52 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %45, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %11, align 4
  %54 = srem i32 %53, 32
  %55 = shl i32 1, %54
  %56 = load i32, i32* %16, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %107

61:                                               ; preds = %44
  %62 = load i32, i32* %11, align 4
  %63 = srem i32 %62, 32
  %64 = shl i32 1, %63
  %65 = load i32, i32* %16, align 4
  %66 = xor i32 %65, %64
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %105, label %69

69:                                               ; preds = %61
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %71 = load i32, i32* %17, align 4
  %72 = mul nsw i32 %71, 2
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %11, align 4
  %75 = sdiv i32 %74, 32
  %76 = sub nsw i32 %73, %75
  %77 = call i32 @IXGBE_VLVFB(i32 %76)
  %78 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %70, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sdiv i32 %86, 32
  %88 = call i32 @IXGBE_VFTA(i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @IXGBE_VLVF(i32 %93)
  %95 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %94, i32 0)
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 %97, 2
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 %99, 32
  %101 = add nsw i32 %98, %100
  %102 = call i32 @IXGBE_VLVFB(i32 %101)
  %103 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %102, i32 0)
  %104 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %104, i32* %8, align 4
  br label %125

105:                                              ; preds = %69, %61
  %106 = load i32*, i32** %13, align 8
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %60
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %109 = load i32, i32* %17, align 4
  %110 = mul nsw i32 %109, 2
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %111, 32
  %113 = add nsw i32 %110, %112
  %114 = call i32 @IXGBE_VLVFB(i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %108, i32 %114, i32 %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @IXGBE_VLVF(i32 %118)
  %120 = load i32, i32* @IXGBE_VLVF_VIEN, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %117, i32 %119, i32 %122)
  %124 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %107, %91, %42, %33, %24
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VLVFB(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

declare dso_local i32 @IXGBE_VLVF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
