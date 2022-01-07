; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_mps_tcam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_mps_tcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.cudbg_buffer = type { i32, %struct.fw_ldst_cmd* }
%struct.fw_ldst_cmd = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fw_ldst_mps_rplc }
%struct.fw_ldst_mps_rplc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_mps_tcam = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i8**, i32 }

@CHELSIO_T6 = common dso_local global i64 0, align 8
@A_MPS_CLS_TCAM_DATA2_CTL = common dso_local global i32 0, align 4
@A_MPS_CLS_TCAM_RDATA1_REQ_ID1 = common dso_local global i32 0, align 4
@A_MPS_CLS_TCAM_RDATA0_REQ_ID1 = common dso_local global i32 0, align 4
@A_MPS_CLS_TCAM_RDATA2_REQ_ID1 = common dso_local global i32 0, align 4
@M_DATALKPTYPE = common dso_local global i64 0, align 8
@F_DATAVIDH2 = common dso_local global i32 0, align 4
@F_DATADIPHIT = common dso_local global i32 0, align 4
@F_REPLICATE = common dso_local global i32 0, align 4
@F_T6_REPLICATE = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_MPS = common dso_local global i32 0, align 4
@FW_LDST_MPS_RPLC = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4cudm\00", align 1
@CUDBG_MAX_RPLC_SIZE = common dso_local global i64 0, align 8
@CUDBG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_mps_tcam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_mps_tcam(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_mps_tcam*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fw_ldst_cmd, align 8
  %21 = alloca %struct.fw_ldst_mps_rplc, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %22 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %23 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %22, i32 0, i32 0
  %24 = load %struct.adapter*, %struct.adapter** %23, align 8
  store %struct.adapter* %24, %struct.adapter** %8, align 8
  store %struct.cudbg_mps_tcam* null, %struct.cudbg_mps_tcam** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.adapter*, %struct.adapter** %8, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 80, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %36, i32 %38, %struct.cudbg_buffer* %7)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %421

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %45 = load %struct.fw_ldst_cmd*, %struct.fw_ldst_cmd** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memset(%struct.fw_ldst_cmd* %45, i32 0, i32 %46)
  %48 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %49 = load %struct.fw_ldst_cmd*, %struct.fw_ldst_cmd** %48, align 8
  %50 = bitcast %struct.fw_ldst_cmd* %49 to %struct.cudbg_mps_tcam*
  store %struct.cudbg_mps_tcam* %50, %struct.cudbg_mps_tcam** %9, align 8
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %397, %43
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %400

55:                                               ; preds = %51
  %56 = load %struct.adapter*, %struct.adapter** %8, align 8
  %57 = call i64 @chip_id(%struct.adapter* %56)
  %58 = load i64, i64* @CHELSIO_T6, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %196

60:                                               ; preds = %55
  %61 = call i32 @V_CTLREQID(i32 1)
  %62 = call i32 @V_CTLCMDTYPE(i32 0)
  %63 = or i32 %61, %62
  %64 = call i32 @V_CTLXYBITSEL(i32 0)
  %65 = or i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @V_CTLTCAMINDEX(i32 %69)
  %71 = call i32 @V_CTLTCAMSEL(i32 0)
  %72 = or i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %83

75:                                               ; preds = %60
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 256
  %78 = call i32 @V_CTLTCAMINDEX(i32 %77)
  %79 = call i32 @V_CTLTCAMSEL(i32 1)
  %80 = or i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.adapter*, %struct.adapter** %8, align 8
  %85 = load i32, i32* @A_MPS_CLS_TCAM_DATA2_CTL, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @t4_write_reg(%struct.adapter* %84, i32 %85, i32 %86)
  %88 = load %struct.adapter*, %struct.adapter** %8, align 8
  %89 = load i32, i32* @A_MPS_CLS_TCAM_RDATA1_REQ_ID1, align 4
  %90 = call i32 @t4_read_reg(%struct.adapter* %88, i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @G_DMACH(i32 %91)
  %93 = shl i32 %92, 32
  store i32 %93, i32* %16, align 4
  %94 = load %struct.adapter*, %struct.adapter** %8, align 8
  %95 = load i32, i32* @A_MPS_CLS_TCAM_RDATA0_REQ_ID1, align 4
  %96 = call i32 @t4_read_reg(%struct.adapter* %94, i32 %95)
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  %99 = load %struct.adapter*, %struct.adapter** %8, align 8
  %100 = load i32, i32* @A_MPS_CLS_TCAM_RDATA2_REQ_ID1, align 4
  %101 = call i32 @t4_read_reg(%struct.adapter* %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @G_DATALKPTYPE(i32 %102)
  %104 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %105 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %107 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %83
  %111 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %112 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @M_DATALKPTYPE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @F_DATAVIDH2, align 4
  %119 = and i32 %117, %118
  %120 = shl i32 %119, 23
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @G_DATAVIDH1(i32 %121)
  %123 = shl i32 %122, 16
  %124 = or i32 %120, %123
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @G_VIDL(i32 %125)
  %127 = or i32 %124, %126
  %128 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %129 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @F_DATADIPHIT, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %134 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  br label %145

135:                                              ; preds = %110, %83
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @F_DATAVIDH2, align 4
  %138 = and i32 %136, %137
  %139 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %140 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @G_VIDL(i32 %141)
  %143 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %144 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %116
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @G_DATAPORTNUM(i32 %146)
  %148 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %149 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %148, i32 0, i32 14
  store i32 %147, i32* %149, align 8
  %150 = call i32 @V_CTLXYBITSEL(i32 1)
  %151 = load i32, i32* %14, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %14, align 4
  %153 = load %struct.adapter*, %struct.adapter** %8, align 8
  %154 = load i32, i32* @A_MPS_CLS_TCAM_DATA2_CTL, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @t4_write_reg(%struct.adapter* %153, i32 %154, i32 %155)
  %157 = load %struct.adapter*, %struct.adapter** %8, align 8
  %158 = load i32, i32* @A_MPS_CLS_TCAM_RDATA1_REQ_ID1, align 4
  %159 = call i32 @t4_read_reg(%struct.adapter* %157, i32 %158)
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @G_DMACH(i32 %160)
  %162 = shl i32 %161, 32
  store i32 %162, i32* %17, align 4
  %163 = load %struct.adapter*, %struct.adapter** %8, align 8
  %164 = load i32, i32* @A_MPS_CLS_TCAM_RDATA0_REQ_ID1, align 4
  %165 = call i32 @t4_read_reg(%struct.adapter* %163, i32 %164)
  %166 = load i32, i32* %17, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %17, align 4
  %168 = load %struct.adapter*, %struct.adapter** %8, align 8
  %169 = load i32, i32* @A_MPS_CLS_TCAM_RDATA2_REQ_ID1, align 4
  %170 = call i32 @t4_read_reg(%struct.adapter* %168, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %172 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %145
  %176 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %177 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @M_DATALKPTYPE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @F_DATAVIDH2, align 4
  %184 = and i32 %182, %183
  %185 = shl i32 %184, 23
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @G_DATAVIDH1(i32 %186)
  %188 = shl i32 %187, 16
  %189 = or i32 %185, %188
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @G_VIDL(i32 %190)
  %192 = or i32 %189, %191
  %193 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %194 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %181, %175, %145
  br label %205

196:                                              ; preds = %55
  %197 = load %struct.adapter*, %struct.adapter** %8, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @MPS_CLS_TCAM_Y_L(i32 %198)
  %200 = call i32 @t4_read_reg64(%struct.adapter* %197, i32 %199)
  store i32 %200, i32* %16, align 4
  %201 = load %struct.adapter*, %struct.adapter** %8, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @MPS_CLS_TCAM_X_L(i32 %202)
  %204 = call i32 @t4_read_reg64(%struct.adapter* %201, i32 %203)
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %196, %195
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %16, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %397

211:                                              ; preds = %205
  %212 = load %struct.adapter*, %struct.adapter** %8, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @MPS_CLS_SRAM_L(i32 %213)
  %215 = call i32 @t4_read_reg(%struct.adapter* %212, i32 %214)
  %216 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %217 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 4
  %218 = load %struct.adapter*, %struct.adapter** %8, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @MPS_CLS_SRAM_H(i32 %219)
  %221 = call i32 @t4_read_reg(%struct.adapter* %218, i32 %220)
  %222 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %223 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  %224 = load %struct.adapter*, %struct.adapter** %8, align 8
  %225 = call i64 @is_t5(%struct.adapter* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %211
  %228 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %229 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @F_REPLICATE, align 4
  %232 = and i32 %230, %231
  %233 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %234 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  br label %248

235:                                              ; preds = %211
  %236 = load %struct.adapter*, %struct.adapter** %8, align 8
  %237 = call i64 @is_t6(%struct.adapter* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %241 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @F_T6_REPLICATE, align 4
  %244 = and i32 %242, %243
  %245 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %246 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %245, i32 0, i32 8
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %239, %235
  br label %248

248:                                              ; preds = %247, %227
  %249 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %250 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %249, i32 0, i32 8
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %372

253:                                              ; preds = %248
  %254 = call i32 @memset(%struct.fw_ldst_cmd* %20, i32 0, i32 56)
  %255 = load i32, i32* @FW_LDST_CMD, align 4
  %256 = call i32 @V_FW_CMD_OP(i32 %255)
  %257 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @F_FW_CMD_READ, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @FW_LDST_ADDRSPC_MPS, align 4
  %262 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %261)
  %263 = or i32 %260, %262
  %264 = call i8* @htonl(i32 %263)
  %265 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %20, i32 0, i32 2
  store i8* %264, i8** %265, align 8
  %266 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %20)
  %267 = call i8* @htonl(i32 %266)
  %268 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %20, i32 0, i32 1
  store i8* %267, i8** %268, align 8
  %269 = load i32, i32* @FW_LDST_MPS_RPLC, align 4
  %270 = call i32 @V_FW_LDST_CMD_FID(i32 %269)
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @V_FW_LDST_CMD_IDX(i32 %271)
  %273 = or i32 %270, %272
  %274 = call i32 @htons(i32 %273)
  %275 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %20, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %277, i32 0, i32 8
  store i32 %274, i32* %278, align 8
  %279 = load %struct.adapter*, %struct.adapter** %8, align 8
  %280 = load i32, i32* @SLEEP_OK, align 4
  %281 = load i32, i32* @INTR_OK, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @begin_synchronized_op(%struct.adapter* %279, i32* null, i32 %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %283, i32* %19, align 4
  %284 = load i32, i32* %19, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %253
  %287 = load %struct.adapter*, %struct.adapter** %8, align 8
  %288 = load %struct.adapter*, %struct.adapter** %8, align 8
  %289 = getelementptr inbounds %struct.adapter, %struct.adapter* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @t4_wr_mbox(%struct.adapter* %287, i32 %290, %struct.fw_ldst_cmd* %20, i32 56, %struct.fw_ldst_cmd* %20)
  store i32 %291, i32* %19, align 4
  %292 = load %struct.adapter*, %struct.adapter** %8, align 8
  %293 = call i32 @end_synchronized_op(%struct.adapter* %292, i32 0)
  br label %294

294:                                              ; preds = %286, %253
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load %struct.adapter*, %struct.adapter** %8, align 8
  %299 = call i32 @mps_rpl_backdoor(%struct.adapter* %298, %struct.fw_ldst_mps_rplc* %21)
  br label %306

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %20, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = bitcast %struct.fw_ldst_mps_rplc* %21 to i8*
  %305 = bitcast %struct.fw_ldst_mps_rplc* %303 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %304, i8* align 8 %305, i64 36, i1 false)
  br label %306

306:                                              ; preds = %300, %297
  %307 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 7
  %308 = load i32, i32* %307, align 4
  %309 = call i8* @ntohl(i32 %308)
  %310 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %311 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %310, i32 0, i32 13
  %312 = load i8**, i8*** %311, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 0
  store i8* %309, i8** %313, align 8
  %314 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 6
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @ntohl(i32 %315)
  %317 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %318 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %317, i32 0, i32 13
  %319 = load i8**, i8*** %318, align 8
  %320 = getelementptr inbounds i8*, i8** %319, i64 1
  store i8* %316, i8** %320, align 8
  %321 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = call i8* @ntohl(i32 %322)
  %324 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %325 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %324, i32 0, i32 13
  %326 = load i8**, i8*** %325, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 2
  store i8* %323, i8** %327, align 8
  %328 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = call i8* @ntohl(i32 %329)
  %331 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %332 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %331, i32 0, i32 13
  %333 = load i8**, i8*** %332, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 3
  store i8* %330, i8** %334, align 8
  %335 = load %struct.adapter*, %struct.adapter** %8, align 8
  %336 = getelementptr inbounds %struct.adapter, %struct.adapter* %335, i32 0, i32 0
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @CUDBG_MAX_RPLC_SIZE, align 8
  %341 = icmp sgt i64 %339, %340
  br i1 %341, label %342, label %371

342:                                              ; preds = %306
  %343 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @ntohl(i32 %344)
  %346 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %347 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %346, i32 0, i32 13
  %348 = load i8**, i8*** %347, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 4
  store i8* %345, i8** %349, align 8
  %350 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = call i8* @ntohl(i32 %351)
  %353 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %354 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %353, i32 0, i32 13
  %355 = load i8**, i8*** %354, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 5
  store i8* %352, i8** %356, align 8
  %357 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i8* @ntohl(i32 %358)
  %360 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %361 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %360, i32 0, i32 13
  %362 = load i8**, i8*** %361, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 6
  store i8* %359, i8** %363, align 8
  %364 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %21, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i8* @ntohl(i32 %365)
  %367 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %368 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %367, i32 0, i32 13
  %369 = load i8**, i8*** %368, align 8
  %370 = getelementptr inbounds i8*, i8** %369, i64 7
  store i8* %366, i8** %370, align 8
  br label %371

371:                                              ; preds = %342, %306
  br label %372

372:                                              ; preds = %371, %248
  %373 = load i32, i32* %17, align 4
  %374 = load i32, i32* %16, align 4
  %375 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %376 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %375, i32 0, i32 12
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %379 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %378, i32 0, i32 11
  %380 = call i32 @cudbg_tcamxy2valmask(i32 %373, i32 %374, i32 %377, i32* %379)
  %381 = load i32, i32* %11, align 4
  %382 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %383 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %382, i32 0, i32 9
  store i32 %381, i32* %383, align 8
  %384 = load %struct.adapter*, %struct.adapter** %8, align 8
  %385 = getelementptr inbounds %struct.adapter, %struct.adapter* %384, i32 0, i32 0
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %390 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %389, i32 0, i32 10
  store i64 %388, i64* %390, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = add i64 %392, 80
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %13, align 4
  %395 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %9, align 8
  %396 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %395, i32 1
  store %struct.cudbg_mps_tcam* %396, %struct.cudbg_mps_tcam** %9, align 8
  br label %397

397:                                              ; preds = %372, %210
  %398 = load i32, i32* %11, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %11, align 4
  br label %51

400:                                              ; preds = %51
  %401 = load i32, i32* %13, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %404, i32* %19, align 4
  br label %416

405:                                              ; preds = %400
  %406 = load i32, i32* %13, align 4
  %407 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %406, i32* %407, align 8
  %408 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %409 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %408)
  store i32 %409, i32* %19, align 4
  %410 = load i32, i32* %19, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %405
  br label %416

413:                                              ; preds = %405
  %414 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %415 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %414)
  store i32 %415, i32* %19, align 4
  br label %416

416:                                              ; preds = %413, %412, %403
  %417 = load i32, i32* %10, align 4
  %418 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %417, i32* %418, align 8
  %419 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %420 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %419)
  br label %421

421:                                              ; preds = %416, %42
  %422 = load i32, i32* %19, align 4
  ret i32 %422
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @V_CTLREQID(i32) #1

declare dso_local i32 @V_CTLCMDTYPE(i32) #1

declare dso_local i32 @V_CTLXYBITSEL(i32) #1

declare dso_local i32 @V_CTLTCAMINDEX(i32) #1

declare dso_local i32 @V_CTLTCAMSEL(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_DMACH(i32) #1

declare dso_local i64 @G_DATALKPTYPE(i32) #1

declare dso_local i32 @G_DATAVIDH1(i32) #1

declare dso_local i32 @G_VIDL(i32) #1

declare dso_local i32 @G_DATAPORTNUM(i32) #1

declare dso_local i32 @t4_read_reg64(%struct.adapter*, i32) #1

declare dso_local i32 @MPS_CLS_TCAM_Y_L(i32) #1

declare dso_local i32 @MPS_CLS_TCAM_X_L(i32) #1

declare dso_local i32 @MPS_CLS_SRAM_L(i32) #1

declare dso_local i32 @MPS_CLS_SRAM_H(i32) #1

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i64 @is_t6(%struct.adapter*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_FID(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_IDX(i32) #1

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

declare dso_local i32 @mps_rpl_backdoor(%struct.adapter*, %struct.fw_ldst_mps_rplc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @cudbg_tcamxy2valmask(i32, i32, i32, i32*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
