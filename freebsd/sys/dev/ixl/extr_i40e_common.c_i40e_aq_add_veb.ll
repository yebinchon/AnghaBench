; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_veb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_veb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_veb = type { i8*, i32, i8*, i8* }
%struct.i40e_aqc_add_veb_completion = type { i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_add_veb = common dso_local global i32 0, align 4
@I40E_AQC_ADD_VEB_FLOATING = common dso_local global i32 0, align 4
@I40E_AQC_ADD_VEB_PORT_TYPE_DEFAULT = common dso_local global i32 0, align 4
@I40E_AQC_ADD_VEB_PORT_TYPE_DATA = common dso_local global i32 0, align 4
@I40E_AQC_ADD_VEB_ENABLE_DISABLE_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_veb(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, %struct.i40e_asq_cmd_details* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.i40e_asq_cmd_details*, align 8
  %18 = alloca %struct.i40e_aq_desc, align 4
  %19 = alloca %struct.i40e_aqc_add_veb*, align 8
  %20 = alloca %struct.i40e_aqc_add_veb_completion*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.i40e_asq_cmd_details* %7, %struct.i40e_asq_cmd_details** %17, align 8
  %23 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.i40e_aqc_add_veb*
  store %struct.i40e_aqc_add_veb* %25, %struct.i40e_aqc_add_veb** %19, align 8
  %26 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.i40e_aqc_add_veb_completion*
  store %struct.i40e_aqc_add_veb_completion* %28, %struct.i40e_aqc_add_veb_completion** %20, align 8
  store i32 0, i32* %22, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %41, i32* %9, align 4
  br label %101

42:                                               ; preds = %8
  %43 = load i32, i32* @i40e_aqc_opc_add_veb, align 4
  %44 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %18, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @CPU_TO_LE16(i32 %45)
  %47 = load %struct.i40e_aqc_add_veb*, %struct.i40e_aqc_add_veb** %19, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_add_veb, %struct.i40e_aqc_add_veb* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i8* @CPU_TO_LE16(i32 %49)
  %51 = load %struct.i40e_aqc_add_veb*, %struct.i40e_aqc_add_veb** %19, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_add_veb, %struct.i40e_aqc_add_veb* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.i40e_aqc_add_veb*, %struct.i40e_aqc_add_veb** %19, align 8
  %55 = getelementptr inbounds %struct.i40e_aqc_add_veb, %struct.i40e_aqc_add_veb* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* @I40E_AQC_ADD_VEB_FLOATING, align 4
  %60 = load i32, i32* %22, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %58, %42
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @I40E_AQC_ADD_VEB_PORT_TYPE_DEFAULT, align 4
  %67 = load i32, i32* %22, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %22, align 4
  br label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @I40E_AQC_ADD_VEB_PORT_TYPE_DATA, align 4
  %71 = load i32, i32* %22, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %22, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @I40E_AQC_ADD_VEB_ENABLE_DISABLE_STATS, align 4
  %78 = load i32, i32* %22, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %22, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %22, align 4
  %82 = call i8* @CPU_TO_LE16(i32 %81)
  %83 = load %struct.i40e_aqc_add_veb*, %struct.i40e_aqc_add_veb** %19, align 8
  %84 = getelementptr inbounds %struct.i40e_aqc_add_veb, %struct.i40e_aqc_add_veb* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %86 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %17, align 8
  %87 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %85, %struct.i40e_aq_desc* %18, i32* null, i32 0, %struct.i40e_asq_cmd_details* %86)
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %80
  %91 = load i32*, i32** %15, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.i40e_aqc_add_veb_completion*, %struct.i40e_aqc_add_veb_completion** %20, align 8
  %95 = getelementptr inbounds %struct.i40e_aqc_add_veb_completion, %struct.i40e_aqc_add_veb_completion* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @LE16_TO_CPU(i32 %96)
  %98 = load i32*, i32** %15, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %90, %80
  %100 = load i32, i32* %21, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %40
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
