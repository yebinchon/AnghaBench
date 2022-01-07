; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_remove_mcast_etag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_remove_mcast_etag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_remove_mcast_etag = type { i8*, i8* }
%struct.i40e_aqc_add_remove_mcast_etag_completion = type { i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_remove_multicast_etag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_remove_mcast_etag(%struct.i40e_hw* %0, i64 %1, i64 %2, i64* %3, i64* %4, %struct.i40e_asq_cmd_details* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.i40e_asq_cmd_details*, align 8
  %14 = alloca %struct.i40e_aq_desc, align 4
  %15 = alloca %struct.i40e_aqc_add_remove_mcast_etag*, align 8
  %16 = alloca %struct.i40e_aqc_add_remove_mcast_etag_completion*, align 8
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.i40e_asq_cmd_details* %5, %struct.i40e_asq_cmd_details** %13, align 8
  %18 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.i40e_aqc_add_remove_mcast_etag*
  store %struct.i40e_aqc_add_remove_mcast_etag* %20, %struct.i40e_aqc_add_remove_mcast_etag** %15, align 8
  %21 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.i40e_aqc_add_remove_mcast_etag_completion*
  store %struct.i40e_aqc_add_remove_mcast_etag_completion* %23, %struct.i40e_aqc_add_remove_mcast_etag_completion** %16, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %27, i32* %7, align 4
  br label %65

28:                                               ; preds = %6
  %29 = load i32, i32* @i40e_aqc_opc_remove_multicast_etag, align 4
  %30 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %14, i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @CPU_TO_LE16(i64 %31)
  %33 = load %struct.i40e_aqc_add_remove_mcast_etag*, %struct.i40e_aqc_add_remove_mcast_etag** %15, align 8
  %34 = getelementptr inbounds %struct.i40e_aqc_add_remove_mcast_etag, %struct.i40e_aqc_add_remove_mcast_etag* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i8* @CPU_TO_LE16(i64 %35)
  %37 = load %struct.i40e_aqc_add_remove_mcast_etag*, %struct.i40e_aqc_add_remove_mcast_etag** %15, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_add_remove_mcast_etag, %struct.i40e_aqc_add_remove_mcast_etag* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %40 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %13, align 8
  %41 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %39, %struct.i40e_aq_desc* %14, i32* null, i32 0, %struct.i40e_asq_cmd_details* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %28
  %45 = load i64*, i64** %11, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.i40e_aqc_add_remove_mcast_etag_completion*, %struct.i40e_aqc_add_remove_mcast_etag_completion** %16, align 8
  %49 = getelementptr inbounds %struct.i40e_aqc_add_remove_mcast_etag_completion, %struct.i40e_aqc_add_remove_mcast_etag_completion* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @LE16_TO_CPU(i32 %50)
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i64*, i64** %12, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.i40e_aqc_add_remove_mcast_etag_completion*, %struct.i40e_aqc_add_remove_mcast_etag_completion** %16, align 8
  %58 = getelementptr inbounds %struct.i40e_aqc_add_remove_mcast_etag_completion, %struct.i40e_aqc_add_remove_mcast_etag_completion* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @LE16_TO_CPU(i32 %59)
  %61 = load i64*, i64** %12, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %26
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i64 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
