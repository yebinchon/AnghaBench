; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_send_driver_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_send_driver_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_driver_version = type { i32*, i32, i32, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_driver_version = type { i32, i32, i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_driver_version = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_send_driver_version(%struct.i40e_hw* %0, %struct.i40e_driver_version* %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_driver_version*, align 8
  %7 = alloca %struct.i40e_asq_cmd_details*, align 8
  %8 = alloca %struct.i40e_aq_desc, align 4
  %9 = alloca %struct.i40e_aqc_driver_version*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_driver_version* %1, %struct.i40e_driver_version** %6, align 8
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %7, align 8
  %12 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.i40e_aqc_driver_version*
  store %struct.i40e_aqc_driver_version* %14, %struct.i40e_aqc_driver_version** %9, align 8
  %15 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %16 = icmp eq %struct.i40e_driver_version* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %18, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load i32, i32* @i40e_aqc_opc_driver_version, align 4
  %21 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %8, i32 %20)
  %22 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %23 = load i32, i32* @I40E_AQ_FLAG_RD, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @CPU_TO_LE16(i32 %24)
  %26 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40e_aqc_driver_version*, %struct.i40e_aqc_driver_version** %9, align 8
  %33 = getelementptr inbounds %struct.i40e_aqc_driver_version, %struct.i40e_aqc_driver_version* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %35 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.i40e_aqc_driver_version*, %struct.i40e_aqc_driver_version** %9, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_driver_version, %struct.i40e_aqc_driver_version* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %40 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i40e_aqc_driver_version*, %struct.i40e_aqc_driver_version** %9, align 8
  %43 = getelementptr inbounds %struct.i40e_aqc_driver_version, %struct.i40e_aqc_driver_version* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %45 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i40e_aqc_driver_version*, %struct.i40e_aqc_driver_version** %9, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_driver_version, %struct.i40e_aqc_driver_version* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %73, %19
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %55 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %64 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %62, %53, %49
  %72 = phi i1 [ false, %53 ], [ false, %49 ], [ %70, %62 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %49

76:                                               ; preds = %71
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %78 = load %struct.i40e_driver_version*, %struct.i40e_driver_version** %6, align 8
  %79 = getelementptr inbounds %struct.i40e_driver_version, %struct.i40e_driver_version* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %7, align 8
  %83 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %77, %struct.i40e_aq_desc* %8, i32* %80, i32 %81, %struct.i40e_asq_cmd_details* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %76, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
