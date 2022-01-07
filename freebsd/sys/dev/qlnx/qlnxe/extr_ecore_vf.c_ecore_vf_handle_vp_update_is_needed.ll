; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_handle_vp_update_is_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_handle_vp_update_is_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_update_params = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Unexpected vport-update TLV[%d] %s\0A\00", align 1
@ecore_channel_tlvs_string = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, i32)* @ecore_vf_handle_vp_update_is_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_vf_handle_vp_update_is_needed(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %98 [
    i32 133, label %9
    i32 129, label %24
    i32 128, label %41
    i32 135, label %49
    i32 132, label %57
    i32 134, label %65
    i32 131, label %82
    i32 130, label %90
  ]

9:                                                ; preds = %3
  %10 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %11 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ true, %9 ], [ %18, %14 ]
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %107

24:                                               ; preds = %3
  %25 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CHIP_REV_IS_FPGA(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i1 [ false, %24 ], [ %35, %29 ]
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %107

41:                                               ; preds = %3
  %42 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %107

49:                                               ; preds = %3
  %50 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %107

57:                                               ; preds = %3
  %58 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %59 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %107

65:                                               ; preds = %3
  %66 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %73 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i1 [ true, %65 ], [ %76, %71 ]
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %107

82:                                               ; preds = %3
  %83 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %107

90:                                               ; preds = %3
  %91 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %92 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %107

98:                                               ; preds = %3
  %99 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** @ecore_channel_tlvs_string, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DP_INFO(%struct.ecore_hwfn* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %98, %90, %82, %77, %57, %49, %41, %36, %19
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
