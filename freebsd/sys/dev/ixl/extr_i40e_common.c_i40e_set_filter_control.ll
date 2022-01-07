; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_set_filter_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_set_filter_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_filter_control_settings = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0 = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PEHSIZE_MASK = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PEHSIZE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PEDSIZE_MASK = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PEDSIZE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PFFCHSIZE_MASK = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PFFCHSIZE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PFFCDSIZE_MASK = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_PFFCDSIZE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_HASHLUTSIZE_MASK = common dso_local global i32 0, align 4
@I40E_HASH_LUT_SIZE_512 = common dso_local global i64 0, align 8
@I40E_PFQF_CTL_0_HASHLUTSIZE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_FD_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_ETYPE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_0_MACVLAN_ENA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_set_filter_control(%struct.i40e_hw* %0, %struct.i40e_filter_control_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_filter_control_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_filter_control_settings* %1, %struct.i40e_filter_control_settings** %5, align 8
  %9 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %11 = icmp ne %struct.i40e_filter_control_settings* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %13, i32* %3, align 4
  br label %132

14:                                               ; preds = %2
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %16 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %17 = call i32 @i40e_validate_filter_settings(%struct.i40e_hw* %15, %struct.i40e_filter_control_settings* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %14
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %24 = load i32, i32* @I40E_PFQF_CTL_0, align 4
  %25 = call i32 @i40e_read_rx_ctl(%struct.i40e_hw* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @I40E_PFQF_CTL_0_PEHSIZE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %31 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @I40E_PFQF_CTL_0_PEHSIZE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @I40E_PFQF_CTL_0_PEHSIZE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @I40E_PFQF_CTL_0_PEDSIZE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @I40E_PFQF_CTL_0_PEDSIZE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @I40E_PFQF_CTL_0_PEDSIZE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @I40E_PFQF_CTL_0_PFFCHSIZE_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %59 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @I40E_PFQF_CTL_0_PFFCHSIZE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @I40E_PFQF_CTL_0_PFFCHSIZE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @I40E_PFQF_CTL_0_PFFCDSIZE_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %73 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @I40E_PFQF_CTL_0_PFFCDSIZE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* @I40E_PFQF_CTL_0_PFFCDSIZE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @I40E_PFQF_CTL_0_HASHLUTSIZE_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %87 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @I40E_HASH_LUT_SIZE_512, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %22
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @I40E_PFQF_CTL_0_HASHLUTSIZE_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @I40E_PFQF_CTL_0_HASHLUTSIZE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %101 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load i32, i32* @I40E_PFQF_CTL_0_FD_ENA_MASK, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %92
  %109 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %110 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @I40E_PFQF_CTL_0_ETYPE_ENA_MASK, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %119 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @I40E_PFQF_CTL_0_MACVLAN_ENA_MASK, align 4
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %128 = load i32, i32* @I40E_PFQF_CTL_0, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %127, i32 %128, i32 %129)
  %131 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %20, %12
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @i40e_validate_filter_settings(%struct.i40e_hw*, %struct.i40e_filter_control_settings*) #1

declare dso_local i32 @i40e_read_rx_ctl(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
