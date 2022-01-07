; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c__ecore_mcp_cmd_and_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c__ecore_mcp_cmd_and_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, i32, i32, i32 }
%struct.ecore_mcp_cmd_elem = type { i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4
@CAN_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"The MFW mailbox is occupied by an uncompleted command. Failed to send command 0x%08x [param 0x%08x].\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"The MFW failed to respond to command 0x%08x [param 0x%08x].\0A\00", align 1
@AVOID_BLOCK = common dso_local global i32 0, align 4
@ECORE_HW_ERR_MFW_RESP_FAIL = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"MFW mailbox: response 0x%08x param 0x%08x [after %d.%03d ms]\0A\00", align 1
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*, i64, i64)* @_ecore_mcp_cmd_and_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mcp_mb_params* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca %struct.ecore_mcp_mb_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ecore_mcp_cmd_elem*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store %struct.ecore_mcp_mb_params* %2, %struct.ecore_mcp_mb_params** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i64 @DIV_ROUND_UP(i64 %17, i32 1000)
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %16, align 4
  br label %20

20:                                               ; preds = %63, %5
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @OSAL_SPIN_LOCK(i32* %24)
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %27 = call i32 @ecore_mcp_has_pending_cmd(%struct.ecore_hwfn* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %68

30:                                               ; preds = %20
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %33 = call i32 @ecore_mcp_update_pending_cmd(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %68

38:                                               ; preds = %30
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @ECORE_AGAIN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %233

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %46 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @OSAL_SPIN_UNLOCK(i32* %48)
  %50 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %51 = load i32, i32* @CAN_SLEEP, align 4
  %52 = call i64 @ECORE_MB_FLAGS_IS_SET(%struct.ecore_mcp_mb_params* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @OSAL_MSLEEP(i64 %55)
  br label %60

57:                                               ; preds = %44
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @OSAL_UDELAY(i64 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %62 = call i32 @OSAL_MFW_CMD_PREEMPT(%struct.ecore_hwfn* %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %20, label %68

68:                                               ; preds = %63, %37, %29
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %74 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %75 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %78 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %73, i32 0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %81, i32* %6, align 4
  br label %240

82:                                               ; preds = %68
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %84 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %85 = call i32 @ecore_mcp_reread_offsets(%struct.ecore_hwfn* %83, %struct.ecore_ptt* %84)
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %87 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  store i64 %91, i64* %15, align 8
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %93 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call %struct.ecore_mcp_cmd_elem* @ecore_mcp_cmd_add_elem(%struct.ecore_hwfn* %92, %struct.ecore_mcp_mb_params* %93, i64 %94)
  store %struct.ecore_mcp_cmd_elem* %95, %struct.ecore_mcp_cmd_elem** %14, align 8
  %96 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %14, align 8
  %97 = icmp ne %struct.ecore_mcp_cmd_elem* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %82
  %99 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %99, i32* %16, align 4
  br label %233

100:                                              ; preds = %82
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %102 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %103 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @__ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %101, %struct.ecore_ptt* %102, %struct.ecore_mcp_mb_params* %103, i64 %104)
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %107 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @OSAL_SPIN_UNLOCK(i32* %109)
  br label %111

111:                                              ; preds = %155, %100
  %112 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %113 = load i32, i32* @CAN_SLEEP, align 4
  %114 = call i64 @ECORE_MB_FLAGS_IS_SET(%struct.ecore_mcp_mb_params* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @OSAL_MSLEEP(i64 %117)
  br label %122

119:                                              ; preds = %111
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @OSAL_UDELAY(i64 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %124 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @OSAL_SPIN_LOCK(i32* %126)
  %128 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %14, align 8
  %129 = getelementptr inbounds %struct.ecore_mcp_cmd_elem, %struct.ecore_mcp_cmd_elem* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %160

133:                                              ; preds = %122
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %135 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %136 = call i32 @ecore_mcp_update_pending_cmd(%struct.ecore_hwfn* %134, %struct.ecore_ptt* %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @ECORE_SUCCESS, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %160

141:                                              ; preds = %133
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @ECORE_AGAIN, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %233

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %149 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = call i32 @OSAL_SPIN_UNLOCK(i32* %151)
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %154 = call i32 @OSAL_MFW_CMD_PREEMPT(%struct.ecore_hwfn* %153)
  br label %155

155:                                              ; preds = %147
  %156 = load i64, i64* %12, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %111, label %160

160:                                              ; preds = %155, %140, %132
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %201

164:                                              ; preds = %160
  %165 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %166 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %167 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %170 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %165, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %171)
  %173 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %174 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %175 = call i32 @ecore_mcp_print_cpu_info(%struct.ecore_hwfn* %173, %struct.ecore_ptt* %174)
  %176 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %177 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = call i32 @OSAL_SPIN_LOCK(i32* %179)
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %182 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %14, align 8
  %183 = call i32 @ecore_mcp_cmd_del_elem(%struct.ecore_hwfn* %181, %struct.ecore_mcp_cmd_elem* %182)
  %184 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %185 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = call i32 @OSAL_SPIN_UNLOCK(i32* %187)
  %189 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %190 = load i32, i32* @AVOID_BLOCK, align 4
  %191 = call i64 @ECORE_MB_FLAGS_IS_SET(%struct.ecore_mcp_mb_params* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %164
  %194 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %195 = call i32 @ecore_mcp_cmd_set_blocking(%struct.ecore_hwfn* %194, i32 1)
  br label %196

196:                                              ; preds = %193, %164
  %197 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %198 = load i32, i32* @ECORE_HW_ERR_MFW_RESP_FAIL, align 4
  %199 = call i32 @ecore_hw_err_notify(%struct.ecore_hwfn* %197, i32 %198)
  %200 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %200, i32* %6, align 4
  br label %240

201:                                              ; preds = %160
  %202 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %203 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %14, align 8
  %204 = call i32 @ecore_mcp_cmd_del_elem(%struct.ecore_hwfn* %202, %struct.ecore_mcp_cmd_elem* %203)
  %205 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %206 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %205, i32 0, i32 0
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = call i32 @OSAL_SPIN_UNLOCK(i32* %208)
  %210 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %211 = load i32, i32* @ECORE_MSG_SP, align 4
  %212 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %213 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %216 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* %11, align 8
  %220 = mul nsw i64 %218, %219
  %221 = sdiv i64 %220, 1000
  %222 = load i64, i64* %12, align 8
  %223 = load i64, i64* %11, align 8
  %224 = mul nsw i64 %222, %223
  %225 = srem i64 %224, 1000
  %226 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %210, i32 %211, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %214, i32 %217, i64 %221, i64 %225)
  %227 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %228 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %9, align 8
  %229 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %232, i32* %6, align 4
  br label %240

233:                                              ; preds = %145, %98, %42
  %234 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %235 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = call i32 @OSAL_SPIN_UNLOCK(i32* %237)
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %233, %201, %196, %72
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_mcp_has_pending_cmd(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_update_pending_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i64 @ECORE_MB_FLAGS_IS_SET(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i64) #1

declare dso_local i32 @OSAL_UDELAY(i64) #1

declare dso_local i32 @OSAL_MFW_CMD_PREEMPT(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_mcp_reread_offsets(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local %struct.ecore_mcp_cmd_elem* @ecore_mcp_cmd_add_elem(%struct.ecore_hwfn*, %struct.ecore_mcp_mb_params*, i64) #1

declare dso_local i32 @__ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*, i64) #1

declare dso_local i32 @ecore_mcp_print_cpu_info(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_cmd_del_elem(%struct.ecore_hwfn*, %struct.ecore_mcp_cmd_elem*) #1

declare dso_local i32 @ecore_mcp_cmd_set_blocking(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_hw_err_notify(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
