; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_process_mib_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_process_mib_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.ecore_hw_info }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.dcbx_ets_feature, %struct.dcbx_app_priority_feature }
%struct.dcbx_ets_feature = type { i32, i32* }
%struct.dcbx_app_priority_feature = type { i32, %struct.dcbx_app_priority_entry* }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.ecore_hw_info = type { i8* }
%struct.ecore_ptt = type { i32 }
%struct.ecore_dcbx_results = type { i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION = common dso_local global i32 0, align 4
@DCBX_APP_NUM_ENTRIES = common dso_local global i32 0, align 4
@DCBX_ETS_MAX_TCS = common dso_local global i32 0, align 4
@DCBX_OOO_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_dcbx_process_mib_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_process_mib_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dcbx_app_priority_feature*, align 8
  %7 = alloca %struct.dcbx_app_priority_entry*, align 8
  %8 = alloca %struct.ecore_dcbx_results, align 4
  %9 = alloca %struct.dcbx_ets_feature*, align 8
  %10 = alloca %struct.ecore_hw_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %16 = bitcast %struct.ecore_dcbx_results* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @DCBX_CONFIG_VERSION, align 4
  %26 = call i8* @GET_MFW_FIELD(i32 %24, i32 %25)
  store i8* %26, i8** %13, align 8
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store %struct.dcbx_app_priority_feature* %32, %struct.dcbx_app_priority_feature** %6, align 8
  %33 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %34 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %33, i32 0, i32 1
  %35 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %34, align 8
  store %struct.dcbx_app_priority_entry* %35, %struct.dcbx_app_priority_entry** %7, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store %struct.dcbx_ets_feature* %41, %struct.dcbx_ets_feature** %9, align 8
  %42 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %9, align 8
  %43 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 3
  store %struct.ecore_hw_info* %48, %struct.ecore_hw_info** %10, align 8
  %49 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %50 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DCBX_APP_NUM_ENTRIES, align 4
  %53 = call i8* @GET_MFW_FIELD(i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %57 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @ecore_dcbx_process_tlv(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56, %struct.ecore_dcbx_results* %8, %struct.dcbx_app_priority_entry* %57, i32 %58, i32 %59, i8* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @ECORE_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %2
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %3, align 4
  br label %101

67:                                               ; preds = %2
  %68 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %9, align 8
  %69 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DCBX_ETS_MAX_TCS, align 4
  %72 = call i8* @GET_MFW_FIELD(i32 %70, i32 %71)
  %73 = load %struct.ecore_hw_info*, %struct.ecore_hw_info** %10, align 8
  %74 = getelementptr inbounds %struct.ecore_hw_info, %struct.ecore_hw_info* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %9, align 8
  %76 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DCBX_OOO_TC, align 4
  %79 = call i8* @GET_MFW_FIELD(i32 %77, i32 %78)
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %81 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %84 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %8, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %8, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %94 = call i32 @ecore_dcbx_dp_protocol(%struct.ecore_hwfn* %93, %struct.ecore_dcbx_results* %8)
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %96 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @OSAL_MEMCPY(i32* %98, %struct.ecore_dcbx_results* %8, i32 12)
  %100 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %67, %65
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @GET_MFW_FIELD(i32, i32) #2

declare dso_local i32 @ecore_dcbx_process_tlv(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_dcbx_results*, %struct.dcbx_app_priority_entry*, i32, i32, i8*) #2

declare dso_local i32 @ecore_dcbx_dp_protocol(%struct.ecore_hwfn*, %struct.ecore_dcbx_results*) #2

declare dso_local i32 @OSAL_MEMCPY(i32*, %struct.ecore_dcbx_results*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
