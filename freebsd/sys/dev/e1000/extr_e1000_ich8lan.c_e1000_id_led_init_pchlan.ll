; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_id_led_init_pchlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_id_led_init_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_mac_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_mac_info = type { i32, i32, i32 }

@E1000_LEDCTL_MODE_LINK_UP = common dso_local global i32 0, align 4
@E1000_PHY_LED0_IVRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_id_led_init_pchlan\00", align 1
@E1000_LEDCTL = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_MASK = common dso_local global i32 0, align 4
@E1000_PHY_LED0_MASK = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_id_led_init_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_id_led_init_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_mac_info* %13, %struct.e1000_mac_info** %4, align 8
  %14 = load i32, i32* @E1000_LEDCTL_MODE_LINK_UP, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @E1000_LEDCTL_MODE_LINK_UP, align 4
  %16 = load i32, i32* @E1000_PHY_LED0_IVRT, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.e1000_hw.0*, i32*)*, i64 (%struct.e1000_hw.0*, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.0*
  %26 = call i64 %23(%struct.e1000_hw.0* %25, i32* %8)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %134

31:                                               ; preds = %1
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @E1000_LEDCTL, align 4
  %34 = call i32 @E1000_READ_REG(%struct.e1000_hw* %32, i32 %33)
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %129, %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %132

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 2
  %54 = ashr i32 %51, %53
  %55 = load i32, i32* @E1000_LEDCTL_LED0_MODE_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 5
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %92 [
    i32 130, label %60
    i32 128, label %60
    i32 129, label %60
    i32 133, label %76
    i32 131, label %76
    i32 132, label %76
  ]

60:                                               ; preds = %50, %50, %50
  %61 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %69, %70
  %72 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %93

76:                                               ; preds = %50, %50, %50
  %77 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %85, %86
  %88 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %93

92:                                               ; preds = %50
  br label %93

93:                                               ; preds = %92, %76, %60
  %94 = load i32, i32* %10, align 4
  switch i32 %94, label %127 [
    i32 134, label %95
    i32 128, label %95
    i32 131, label %95
    i32 135, label %111
    i32 129, label %111
    i32 132, label %111
  ]

95:                                               ; preds = %93, %93, %93
  %96 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %101 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %104, %105
  %107 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %108 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %128

111:                                              ; preds = %93, %93, %93
  %112 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %113 = load i32, i32* %11, align 4
  %114 = shl i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %11, align 4
  %122 = shl i32 %120, %121
  %123 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %124 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %128

127:                                              ; preds = %93
  br label %128

128:                                              ; preds = %127, %111, %95
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %47

132:                                              ; preds = %47
  %133 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %133, i64* %2, align 8
  br label %134

134:                                              ; preds = %132, %29
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
