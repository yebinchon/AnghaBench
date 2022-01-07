; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_handle_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, %struct.ecore_mcp_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_mcp_info = type { i64, i64*, i64*, i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Received message from MFW\0A\00", align 1
@ECORE_MSG_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Msg [%d] - old CMD 0x%02x, new CMD 0x%02x\0A\00", align 1
@ECORE_DCBX_REMOTE_LLDP_MIB = common dso_local global i32 0, align 4
@ECORE_DCBX_REMOTE_MIB = common dso_local global i32 0, align 4
@ECORE_DCBX_OPERATIONAL_MIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unimplemented MFW message %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Received an MFW message indication but no new message!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_handle_events(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_mcp_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 1
  %12 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %11, align 8
  store %struct.ecore_mcp_info* %12, %struct.ecore_mcp_info** %5, align 8
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = load i32, i32* @ECORE_MSG_SP, align 4
  %16 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %14, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %19 = call i32 @ecore_mcp_read_mb(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18)
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %132, %2
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %23 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %135

26:                                               ; preds = %20
  %27 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %34 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %132

41:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %43 = load i32, i32* @ECORE_MSG_LINK, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %46 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %50, i64 %56)
  %58 = load i64, i64* %8, align 8
  switch i64 %58, label %126 [
    i64 134, label %59
    i64 128, label %63
    i64 133, label %67
    i64 142, label %72
    i64 143, label %77
    i64 132, label %87
    i64 131, label %91
    i64 129, label %95
    i64 141, label %99
    i64 137, label %103
    i64 139, label %103
    i64 138, label %103
    i64 136, label %103
    i64 145, label %108
    i64 130, label %112
    i64 140, label %116
    i64 144, label %119
    i64 135, label %123
  ]

59:                                               ; preds = %41
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %61 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %62 = call i32 @ecore_mcp_handle_link_change(%struct.ecore_hwfn* %60, %struct.ecore_ptt* %61, i32 0)
  br label %131

63:                                               ; preds = %41
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %65 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %66 = call i32 @ecore_mcp_handle_vf_flr(%struct.ecore_hwfn* %64, %struct.ecore_ptt* %65)
  br label %131

67:                                               ; preds = %41
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %69 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %70 = load i32, i32* @ECORE_DCBX_REMOTE_LLDP_MIB, align 4
  %71 = call i32 @ecore_dcbx_mib_update_event(%struct.ecore_hwfn* %68, %struct.ecore_ptt* %69, i32 %70)
  br label %131

72:                                               ; preds = %41
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %74 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %75 = load i32, i32* @ECORE_DCBX_REMOTE_MIB, align 4
  %76 = call i32 @ecore_dcbx_mib_update_event(%struct.ecore_hwfn* %73, %struct.ecore_ptt* %74, i32 %75)
  br label %131

77:                                               ; preds = %41
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %79 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %80 = load i32, i32* @ECORE_DCBX_OPERATIONAL_MIB, align 4
  %81 = call i32 @ecore_dcbx_mib_update_event(%struct.ecore_hwfn* %78, %struct.ecore_ptt* %79, i32 %80)
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %83 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @OSAL_MEMSET(i32* %85, i32 0, i32 4)
  br label %131

87:                                               ; preds = %41
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %89 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %90 = call i32 @ecore_lldp_mib_update_event(%struct.ecore_hwfn* %88, %struct.ecore_ptt* %89)
  br label %131

91:                                               ; preds = %41
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %93 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %94 = call i32 @ecore_mcp_handle_ufp_event(%struct.ecore_hwfn* %92, %struct.ecore_ptt* %93)
  br label %131

95:                                               ; preds = %41
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %97 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %98 = call i32 @ecore_mcp_handle_transceiver_change(%struct.ecore_hwfn* %96, %struct.ecore_ptt* %97)
  br label %131

99:                                               ; preds = %41
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %101 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %102 = call i32 @ecore_mcp_handle_process_kill(%struct.ecore_hwfn* %100, %struct.ecore_ptt* %101)
  br label %131

103:                                              ; preds = %41, %41, %41, %41
  %104 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %105 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @ecore_mcp_send_protocol_stats(%struct.ecore_hwfn* %104, %struct.ecore_ptt* %105, i64 %106)
  br label %131

108:                                              ; preds = %41
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %110 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %111 = call i32 @ecore_mcp_update_bw(%struct.ecore_hwfn* %109, %struct.ecore_ptt* %110)
  br label %131

112:                                              ; preds = %41
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %114 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %115 = call i32 @ecore_mcp_update_stag(%struct.ecore_hwfn* %113, %struct.ecore_ptt* %114)
  br label %131

116:                                              ; preds = %41
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %118 = call i32 @ecore_mcp_handle_fan_failure(%struct.ecore_hwfn* %117)
  br label %131

119:                                              ; preds = %41
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %121 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %122 = call i32 @ecore_mcp_handle_critical_error(%struct.ecore_hwfn* %120, %struct.ecore_ptt* %121)
  br label %131

123:                                              ; preds = %41
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %125 = call i32 @OSAL_MFW_TLV_REQ(%struct.ecore_hwfn* %124)
  br label %131

126:                                              ; preds = %41
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %126, %123, %119, %116, %112, %108, %103, %99, %95, %91, %87, %77, %72, %67, %63, %59
  br label %132

132:                                              ; preds = %131, %40
  %133 = load i64, i64* %8, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %8, align 8
  br label %20

135:                                              ; preds = %20
  store i64 0, i64* %8, align 8
  br label %136

136:                                              ; preds = %171, %135
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %139 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @MFW_DRV_MSG_MAX_DWORDS(i64 %140)
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %137, %142
  br i1 %143, label %144, label %174

144:                                              ; preds = %136
  %145 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %146 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = bitcast i64* %147 to i32*
  %149 = load i64, i64* %8, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @OSAL_CPU_TO_BE32(i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %154 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %155 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %156 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 4
  %159 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %160 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @MFW_DRV_MSG_MAX_DWORDS(i64 %161)
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = add i64 %158, %164
  %166 = load i64, i64* %8, align 8
  %167 = mul i64 %166, 4
  %168 = add i64 %165, %167
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @ecore_wr(%struct.ecore_hwfn* %153, %struct.ecore_ptt* %154, i64 %168, i32 %169)
  br label %171

171:                                              ; preds = %144
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %8, align 8
  br label %136

174:                                              ; preds = %136
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %179 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %178, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %177, %174
  %182 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %183 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %182, i32 0, i32 2
  %184 = load i64*, i64** %183, align 8
  %185 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %186 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %5, align 8
  %189 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @OSAL_MEMCPY(i64* %184, i64* %187, i64 %190)
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_mcp_read_mb(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_handle_link_change(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_mcp_handle_vf_flr(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_dcbx_mib_update_event(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #1

declare dso_local i32 @ecore_lldp_mib_update_event(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_handle_ufp_event(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_handle_transceiver_change(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_handle_process_kill(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_send_protocol_stats(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i32 @ecore_mcp_update_bw(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_update_stag(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_handle_fan_failure(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_handle_critical_error(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @OSAL_MFW_TLV_REQ(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @MFW_DRV_MSG_MAX_DWORDS(i64) #1

declare dso_local i32 @OSAL_CPU_TO_BE32(i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
