; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_process_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_process_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_dcbx_results = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.dcbx_app_priority_entry = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Num APP entries = %d pri_tc_tbl = 0x%x dcbx_version = %u\0A\00", align 1
@DCBX_CONFIG_VERSION_IEEE = common dso_local global i64 0, align 8
@DCBX_APP_PROTOCOL_ID = common dso_local global i32 0, align 4
@DCBX_APP_PRI_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Id = 0x%x pri_map = %u\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid priority\0A\00", align 1
@DCBX_PROTOCOL_ETH = common dso_local global i32 0, align 4
@ECORE_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@DCBX_MAX_PROTOCOL_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_dcbx_results*, %struct.dcbx_app_priority_entry*, i32, i32, i64)* @ecore_dcbx_process_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_process_tlv(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_dcbx_results* %2, %struct.dcbx_app_priority_entry* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca %struct.ecore_dcbx_results*, align 8
  %12 = alloca %struct.dcbx_app_priority_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %10, align 8
  store %struct.ecore_dcbx_results* %2, %struct.ecore_dcbx_results** %11, align 8
  store %struct.dcbx_app_priority_entry* %3, %struct.dcbx_app_priority_entry** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %26 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %28 = load i32, i32* @ECORE_MSG_DCB, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %15, align 8
  %33 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %27, i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %31, i64 %32)
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* @DCBX_CONFIG_VERSION_IEEE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %25, align 4
  br label %38

38:                                               ; preds = %106, %7
  %39 = load i32, i32* %25, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %38
  %43 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %12, align 8
  %44 = load i32, i32* %25, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %43, i64 %45
  %47 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DCBX_APP_PROTOCOL_ID, align 4
  %50 = call i8* @GET_MFW_FIELD(i32 %48, i32 %49)
  store i8* %50, i8** %22, align 8
  %51 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %12, align 8
  %52 = load i32, i32* %25, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DCBX_APP_PRI_MAP, align 4
  %58 = call i8* @GET_MFW_FIELD(i32 %56, i32 %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %21, align 8
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %61 = load i32, i32* @ECORE_MSG_DCB, align 4
  %62 = load i8*, i8** %22, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load i64, i64* %21, align 8
  %65 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %60, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64)
  %66 = load i64, i64* %21, align 8
  %67 = call i32 @ecore_dcbx_get_app_priority(i64 %66, i64* %23)
  store i32 %67, i32* %24, align 4
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* @ECORE_INVAL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %42
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %73 = call i32 @DP_ERR(%struct.ecore_hwfn* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %74, i32* %8, align 4
  br label %177

75:                                               ; preds = %42
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %23, align 8
  %78 = call i64 @ECORE_DCBX_PRIO2TC(i32 %76, i64 %77)
  store i64 %78, i64* %20, align 8
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %80 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %12, align 8
  %81 = load i32, i32* %25, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %80, i64 %82
  %84 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %22, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i64 @ecore_dcbx_get_app_protocol_type(%struct.ecore_hwfn* %79, i32 %85, i8* %86, i32* %16, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %75
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %17, align 4
  store i32 1, i32* %19, align 4
  br label %96

95:                                               ; preds = %90
  store i32 1, i32* %17, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %11, align 8
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %99 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i64, i64* %23, align 8
  %102 = load i64, i64* %20, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @ecore_dcbx_update_app_info(%struct.ecore_dcbx_results* %97, %struct.ecore_hwfn* %98, %struct.ecore_ptt* %99, i32 %100, i64 %101, i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %75
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %25, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %25, align 4
  br label %38

109:                                              ; preds = %38
  %110 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %112 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i64 @OSAL_TEST_BIT(i32 %110, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %109
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %122 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %11, align 8
  %126 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i64 %124, i64* %131, align 8
  br label %132

132:                                              ; preds = %120, %117, %109
  %133 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %11, align 8
  %134 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %20, align 8
  %141 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %11, align 8
  %142 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %23, align 8
  store i32 0, i32* %16, align 4
  br label %149

149:                                              ; preds = %172, %132
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* @DCBX_MAX_PROTOCOL_TYPE, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %175

153:                                              ; preds = %149
  %154 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %11, align 8
  %155 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %172

164:                                              ; preds = %153
  %165 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %11, align 8
  %166 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %167 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %168 = load i64, i64* %23, align 8
  %169 = load i64, i64* %20, align 8
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @ecore_dcbx_update_app_info(%struct.ecore_dcbx_results* %165, %struct.ecore_hwfn* %166, %struct.ecore_ptt* %167, i32 0, i64 %168, i64 %169, i32 %170)
  br label %172

172:                                              ; preds = %164, %163
  %173 = load i32, i32* %16, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %149

175:                                              ; preds = %149
  %176 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %175, %71
  %178 = load i32, i32* %8, align 4
  ret i32 %178
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, ...) #1

declare dso_local i8* @GET_MFW_FIELD(i32, i32) #1

declare dso_local i32 @ecore_dcbx_get_app_priority(i64, i64*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i64 @ECORE_DCBX_PRIO2TC(i32, i64) #1

declare dso_local i64 @ecore_dcbx_get_app_protocol_type(%struct.ecore_hwfn*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ecore_dcbx_update_app_info(%struct.ecore_dcbx_results*, %struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64, i32) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
