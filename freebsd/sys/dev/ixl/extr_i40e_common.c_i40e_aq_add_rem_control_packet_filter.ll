; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_rem_control_packet_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_rem_control_packet_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_control_filter_stats = type { i8*, i8*, i8*, i8* }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_remove_control_packet_filter = type { i8*, i8*, i8*, i32, i8* }
%struct.i40e_aqc_add_remove_control_packet_filter_completion = type { i32, i32, i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_add_control_packet_filter = common dso_local global i32 0, align 4
@i40e_aqc_opc_remove_control_packet_filter = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_NONDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_rem_control_packet_filter(%struct.i40e_hw* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, %struct.i40e_control_filter_stats* %7, %struct.i40e_asq_cmd_details* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.i40e_control_filter_stats*, align 8
  %19 = alloca %struct.i40e_asq_cmd_details*, align 8
  %20 = alloca %struct.i40e_aq_desc, align 4
  %21 = alloca %struct.i40e_aqc_add_remove_control_packet_filter*, align 8
  %22 = alloca %struct.i40e_aqc_add_remove_control_packet_filter_completion*, align 8
  %23 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.i40e_control_filter_stats* %7, %struct.i40e_control_filter_stats** %18, align 8
  store %struct.i40e_asq_cmd_details* %8, %struct.i40e_asq_cmd_details** %19, align 8
  %24 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %20, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.i40e_aqc_add_remove_control_packet_filter*
  store %struct.i40e_aqc_add_remove_control_packet_filter* %26, %struct.i40e_aqc_add_remove_control_packet_filter** %21, align 8
  %27 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %20, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.i40e_aqc_add_remove_control_packet_filter_completion*
  store %struct.i40e_aqc_add_remove_control_packet_filter_completion* %29, %struct.i40e_aqc_add_remove_control_packet_filter_completion** %22, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %33, i32* %10, align 4
  br label %106

34:                                               ; preds = %9
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @i40e_aqc_opc_add_control_packet_filter, align 4
  %39 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %20, i32 %38)
  %40 = load i64, i64* %16, align 8
  %41 = call i8* @CPU_TO_LE16(i64 %40)
  %42 = load %struct.i40e_aqc_add_remove_control_packet_filter*, %struct.i40e_aqc_add_remove_control_packet_filter** %21, align 8
  %43 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, %struct.i40e_aqc_add_remove_control_packet_filter* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @i40e_aqc_opc_remove_control_packet_filter, align 4
  %46 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %20, i32 %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.i40e_aqc_add_remove_control_packet_filter*, %struct.i40e_aqc_add_remove_control_packet_filter** %21, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, %struct.i40e_aqc_add_remove_control_packet_filter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %57 = call i32 @i40e_memcpy(i32 %53, i32* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i64, i64* %13, align 8
  %60 = call i8* @CPU_TO_LE16(i64 %59)
  %61 = load %struct.i40e_aqc_add_remove_control_packet_filter*, %struct.i40e_aqc_add_remove_control_packet_filter** %21, align 8
  %62 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, %struct.i40e_aqc_add_remove_control_packet_filter* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i8* @CPU_TO_LE16(i64 %63)
  %65 = load %struct.i40e_aqc_add_remove_control_packet_filter*, %struct.i40e_aqc_add_remove_control_packet_filter** %21, align 8
  %66 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, %struct.i40e_aqc_add_remove_control_packet_filter* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i8* @CPU_TO_LE16(i64 %67)
  %69 = load %struct.i40e_aqc_add_remove_control_packet_filter*, %struct.i40e_aqc_add_remove_control_packet_filter** %21, align 8
  %70 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, %struct.i40e_aqc_add_remove_control_packet_filter* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %72 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %19, align 8
  %73 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %71, %struct.i40e_aq_desc* %20, i32* null, i32 0, %struct.i40e_asq_cmd_details* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %104, label %76

76:                                               ; preds = %58
  %77 = load %struct.i40e_control_filter_stats*, %struct.i40e_control_filter_stats** %18, align 8
  %78 = icmp ne %struct.i40e_control_filter_stats* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %76
  %80 = load %struct.i40e_aqc_add_remove_control_packet_filter_completion*, %struct.i40e_aqc_add_remove_control_packet_filter_completion** %22, align 8
  %81 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter_completion, %struct.i40e_aqc_add_remove_control_packet_filter_completion* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @LE16_TO_CPU(i32 %82)
  %84 = load %struct.i40e_control_filter_stats*, %struct.i40e_control_filter_stats** %18, align 8
  %85 = getelementptr inbounds %struct.i40e_control_filter_stats, %struct.i40e_control_filter_stats* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.i40e_aqc_add_remove_control_packet_filter_completion*, %struct.i40e_aqc_add_remove_control_packet_filter_completion** %22, align 8
  %87 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter_completion, %struct.i40e_aqc_add_remove_control_packet_filter_completion* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @LE16_TO_CPU(i32 %88)
  %90 = load %struct.i40e_control_filter_stats*, %struct.i40e_control_filter_stats** %18, align 8
  %91 = getelementptr inbounds %struct.i40e_control_filter_stats, %struct.i40e_control_filter_stats* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.i40e_aqc_add_remove_control_packet_filter_completion*, %struct.i40e_aqc_add_remove_control_packet_filter_completion** %22, align 8
  %93 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter_completion, %struct.i40e_aqc_add_remove_control_packet_filter_completion* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @LE16_TO_CPU(i32 %94)
  %96 = load %struct.i40e_control_filter_stats*, %struct.i40e_control_filter_stats** %18, align 8
  %97 = getelementptr inbounds %struct.i40e_control_filter_stats, %struct.i40e_control_filter_stats* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.i40e_aqc_add_remove_control_packet_filter_completion*, %struct.i40e_aqc_add_remove_control_packet_filter_completion** %22, align 8
  %99 = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter_completion, %struct.i40e_aqc_add_remove_control_packet_filter_completion* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @LE16_TO_CPU(i32 %100)
  %102 = load %struct.i40e_control_filter_stats*, %struct.i40e_control_filter_stats** %18, align 8
  %103 = getelementptr inbounds %struct.i40e_control_filter_stats, %struct.i40e_control_filter_stats* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %79, %76, %58
  %105 = load i32, i32* %23, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %104, %32
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_memcpy(i32, i32*, i32, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i8* @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
