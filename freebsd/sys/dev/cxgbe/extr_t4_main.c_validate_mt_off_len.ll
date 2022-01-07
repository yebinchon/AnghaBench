; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_validate_mt_off_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_validate_mt_off_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@A_MA_TARGET_MEM_ENABLE = common dso_local global i32 0, align 4
@F_EDRAM0_ENABLE = common dso_local global i32 0, align 4
@A_MA_EDRAM0_BAR = common dso_local global i32 0, align 4
@F_EDRAM1_ENABLE = common dso_local global i32 0, align 4
@A_MA_EDRAM1_BAR = common dso_local global i32 0, align 4
@F_EXT_MEM_ENABLE = common dso_local global i32 0, align 4
@A_MA_EXT_MEMORY_BAR = common dso_local global i32 0, align 4
@F_EXT_MEM1_ENABLE = common dso_local global i32 0, align 4
@A_MA_EXT_MEMORY1_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32, i32*)* @validate_mt_off_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_mt_off_len(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %18, %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %105

27:                                               ; preds = %22
  %28 = load %struct.adapter*, %struct.adapter** %7, align 8
  %29 = load i32, i32* @A_MA_TARGET_MEM_ENABLE, align 4
  %30 = call i32 @t4_read_reg(%struct.adapter* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @fwmtype_to_hwmtype(i32 %31)
  switch i32 %32, label %93 [
    i32 131, label %33
    i32 130, label %47
    i32 129, label %61
    i32 128, label %75
  ]

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @F_EDRAM0_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %105

40:                                               ; preds = %33
  %41 = load %struct.adapter*, %struct.adapter** %7, align 8
  %42 = load i32, i32* @A_MA_EDRAM0_BAR, align 4
  %43 = call i32 @t4_read_reg(%struct.adapter* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @G_EDRAM0_BASE(i32 %44)
  %46 = shl i32 %45, 20
  store i32 %46, i32* %14, align 4
  br label %95

47:                                               ; preds = %27
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @F_EDRAM1_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %6, align 4
  br label %105

54:                                               ; preds = %47
  %55 = load %struct.adapter*, %struct.adapter** %7, align 8
  %56 = load i32, i32* @A_MA_EDRAM1_BAR, align 4
  %57 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @G_EDRAM1_BASE(i32 %58)
  %60 = shl i32 %59, 20
  store i32 %60, i32* %14, align 4
  br label %95

61:                                               ; preds = %27
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @F_EXT_MEM_ENABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %6, align 4
  br label %105

68:                                               ; preds = %61
  %69 = load %struct.adapter*, %struct.adapter** %7, align 8
  %70 = load i32, i32* @A_MA_EXT_MEMORY_BAR, align 4
  %71 = call i32 @t4_read_reg(%struct.adapter* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @G_EXT_MEM_BASE(i32 %72)
  %74 = shl i32 %73, 20
  store i32 %74, i32* %14, align 4
  br label %95

75:                                               ; preds = %27
  %76 = load %struct.adapter*, %struct.adapter** %7, align 8
  %77 = call i32 @is_t5(%struct.adapter* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @F_EXT_MEM1_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79, %75
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %6, align 4
  br label %105

86:                                               ; preds = %79
  %87 = load %struct.adapter*, %struct.adapter** %7, align 8
  %88 = load i32, i32* @A_MA_EXT_MEMORY1_BAR, align 4
  %89 = call i32 @t4_read_reg(%struct.adapter* %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @G_EXT_MEM1_BASE(i32 %90)
  %92 = shl i32 %91, 20
  store i32 %92, i32* %14, align 4
  br label %95

93:                                               ; preds = %27
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %6, align 4
  br label %105

95:                                               ; preds = %86, %68, %54, %40
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.adapter*, %struct.adapter** %7, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @validate_mem_range(%struct.adapter* %100, i32 %102, i32 %103)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %95, %93, %84, %66, %52, %38, %25
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @fwmtype_to_hwmtype(i32) #1

declare dso_local i32 @G_EDRAM0_BASE(i32) #1

declare dso_local i32 @G_EDRAM1_BASE(i32) #1

declare dso_local i32 @G_EXT_MEM_BASE(i32) #1

declare dso_local i32 @is_t5(%struct.adapter*) #1

declare dso_local i32 @G_EXT_MEM1_BASE(i32) #1

declare dso_local i32 @validate_mem_range(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
