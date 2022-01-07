; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_int_mem_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_int_mem_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@TSDM_REG_ENABLE_IN1 = common dso_local global i64 0, align 8
@TCM_REG_PRS_IFEN = common dso_local global i64 0, align 8
@CFC_REG_DEBUG0 = common dso_local global i64 0, align 8
@NIG_REG_PRS_REQ_IN_EN = common dso_local global i64 0, align 8
@PRS_REG_CFC_SEARCH_INITIAL_CREDIT = common dso_local global i64 0, align 8
@NIG_REG_STAT2_BRB_OCTET = common dso_local global i32 0, align 4
@wb_data = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"NIG timeout val=0x%x\0A\00", align 1
@PRS_REG_NUM_OF_PACKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"PRS timeout val=0x%x\0A\00", align 1
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_SET = common dso_local global i64 0, align 8
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@PHASE_COMMON = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_EOP_LB_FIFO = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_EOP_LB_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"clear of NIG failed val=0x%x\0A\00", align 1
@PRS_REG_NIC_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_int_mem_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_int_mem_test(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = call i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 120, i32* %4, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = call i64 @CHIP_REV_IS_EMUL(%struct.bxe_softc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 200, i32* %4, align 4
  br label %18

17:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %11
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = load i64, i64* @TSDM_REG_ENABLE_IN1, align 8
  %22 = call i32 @REG_WR(%struct.bxe_softc* %20, i64 %21, i32 0)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = load i64, i64* @TCM_REG_PRS_IFEN, align 8
  %25 = call i32 @REG_WR(%struct.bxe_softc* %23, i64 %24, i32 0)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %27 = load i64, i64* @CFC_REG_DEBUG0, align 8
  %28 = call i32 @REG_WR(%struct.bxe_softc* %26, i64 %27, i32 1)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = load i64, i64* @NIG_REG_PRS_REQ_IN_EN, align 8
  %31 = call i32 @REG_WR(%struct.bxe_softc* %29, i64 %30, i32 0)
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = load i64, i64* @PRS_REG_CFC_SEARCH_INITIAL_CREDIT, align 8
  %34 = call i32 @REG_WR(%struct.bxe_softc* %32, i64 %33, i32 0)
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = call i32 @bxe_lb_pckt(%struct.bxe_softc* %35)
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 1000, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %55, %19
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = load i32, i32* @NIG_REG_STAT2_BRB_OCTET, align 4
  %45 = call i32 @bxe_read_dmae(%struct.bxe_softc* %43, i32 %44, i32 2)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = load i32*, i32** @wb_data, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @BXE_SP(%struct.bxe_softc* %46, i32 %49)
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  %56 = call i32 @DELAY(i32 10000)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %39

59:                                               ; preds = %54, %39
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @BLOGE(%struct.bxe_softc* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %2, align 4
  br label %253

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 1000, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %79, %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %74 = load i32, i32* @PRS_REG_NUM_OF_PACKETS, align 4
  %75 = call i32 @REG_RD(%struct.bxe_softc* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %83

79:                                               ; preds = %72
  %80 = call i32 @DELAY(i32 10000)
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  br label %69

83:                                               ; preds = %78, %69
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @BLOGE(%struct.bxe_softc* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  store i32 -2, i32* %2, align 4
  br label %253

90:                                               ; preds = %83
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %92 = load i64, i64* @GRCBASE_MISC, align 8
  %93 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @REG_WR(%struct.bxe_softc* %91, i64 %94, i32 3)
  %96 = call i32 @DELAY(i32 50000)
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %98 = load i64, i64* @GRCBASE_MISC, align 8
  %99 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_SET, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @REG_WR(%struct.bxe_softc* %97, i64 %100, i32 3)
  %102 = call i32 @DELAY(i32 50000)
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %104 = load i32, i32* @BLOCK_BRB1, align 4
  %105 = load i32, i32* @PHASE_COMMON, align 4
  %106 = call i32 @ecore_init_block(%struct.bxe_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %108 = load i32, i32* @BLOCK_PRS, align 4
  %109 = load i32, i32* @PHASE_COMMON, align 4
  %110 = call i32 @ecore_init_block(%struct.bxe_softc* %107, i32 %108, i32 %109)
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %112 = load i64, i64* @TSDM_REG_ENABLE_IN1, align 8
  %113 = call i32 @REG_WR(%struct.bxe_softc* %111, i64 %112, i32 0)
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %115 = load i64, i64* @TCM_REG_PRS_IFEN, align 8
  %116 = call i32 @REG_WR(%struct.bxe_softc* %114, i64 %115, i32 0)
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %118 = load i64, i64* @CFC_REG_DEBUG0, align 8
  %119 = call i32 @REG_WR(%struct.bxe_softc* %117, i64 %118, i32 1)
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %121 = load i64, i64* @NIG_REG_PRS_REQ_IN_EN, align 8
  %122 = call i32 @REG_WR(%struct.bxe_softc* %120, i64 %121, i32 0)
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %124 = load i64, i64* @PRS_REG_CFC_SEARCH_INITIAL_CREDIT, align 8
  %125 = call i32 @REG_WR(%struct.bxe_softc* %123, i64 %124, i32 0)
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %132, %90
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 10
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %131 = call i32 @bxe_lb_pckt(%struct.bxe_softc* %130)
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %126

135:                                              ; preds = %126
  %136 = load i32, i32* %4, align 4
  %137 = mul nsw i32 1000, %136
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %154, %135
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %143 = load i32, i32* @NIG_REG_STAT2_BRB_OCTET, align 4
  %144 = call i32 @bxe_read_dmae(%struct.bxe_softc* %142, i32 %143, i32 2)
  %145 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %146 = load i32*, i32** @wb_data, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @BXE_SP(%struct.bxe_softc* %145, i32 %148)
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %151, 176
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %158

154:                                              ; preds = %141
  %155 = call i32 @DELAY(i32 10000)
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %5, align 4
  br label %138

158:                                              ; preds = %153, %138
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 176
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @BLOGE(%struct.bxe_softc* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %163)
  store i32 -3, i32* %2, align 4
  br label %253

165:                                              ; preds = %158
  %166 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %167 = load i32, i32* @PRS_REG_NUM_OF_PACKETS, align 4
  %168 = call i32 @REG_RD(%struct.bxe_softc* %166, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 2
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @BLOGE(%struct.bxe_softc* %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %165
  %176 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %177 = load i64, i64* @PRS_REG_CFC_SEARCH_INITIAL_CREDIT, align 8
  %178 = call i32 @REG_WR(%struct.bxe_softc* %176, i64 %177, i32 1)
  %179 = load i32, i32* %4, align 4
  %180 = mul nsw i32 10000, %179
  %181 = call i32 @DELAY(i32 %180)
  %182 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %183 = load i32, i32* @PRS_REG_NUM_OF_PACKETS, align 4
  %184 = call i32 @REG_RD(%struct.bxe_softc* %182, i32 %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 3
  br i1 %186, label %187, label %191

187:                                              ; preds = %175
  %188 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @BLOGE(%struct.bxe_softc* %188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %187, %175
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %199, %191
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 11
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %197 = load i32, i32* @NIG_REG_INGRESS_EOP_LB_FIFO, align 4
  %198 = call i32 @REG_RD(%struct.bxe_softc* %196, i32 %197)
  br label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %192

202:                                              ; preds = %192
  %203 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %204 = load i32, i32* @NIG_REG_INGRESS_EOP_LB_EMPTY, align 4
  %205 = call i32 @REG_RD(%struct.bxe_softc* %203, i32 %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @BLOGE(%struct.bxe_softc* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  store i32 -4, i32* %2, align 4
  br label %253

212:                                              ; preds = %202
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %214 = load i64, i64* @GRCBASE_MISC, align 8
  %215 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @REG_WR(%struct.bxe_softc* %213, i64 %216, i32 3)
  %218 = call i32 @DELAY(i32 50000)
  %219 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %220 = load i64, i64* @GRCBASE_MISC, align 8
  %221 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_SET, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @REG_WR(%struct.bxe_softc* %219, i64 %222, i32 3)
  %224 = call i32 @DELAY(i32 50000)
  %225 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %226 = load i32, i32* @BLOCK_BRB1, align 4
  %227 = load i32, i32* @PHASE_COMMON, align 4
  %228 = call i32 @ecore_init_block(%struct.bxe_softc* %225, i32 %226, i32 %227)
  %229 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %230 = load i32, i32* @BLOCK_PRS, align 4
  %231 = load i32, i32* @PHASE_COMMON, align 4
  %232 = call i32 @ecore_init_block(%struct.bxe_softc* %229, i32 %230, i32 %231)
  %233 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %234 = call i32 @CNIC_SUPPORT(%struct.bxe_softc* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %212
  %237 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %238 = load i64, i64* @PRS_REG_NIC_MODE, align 8
  %239 = call i32 @REG_WR(%struct.bxe_softc* %237, i64 %238, i32 1)
  br label %240

240:                                              ; preds = %236, %212
  %241 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %242 = load i64, i64* @TSDM_REG_ENABLE_IN1, align 8
  %243 = call i32 @REG_WR(%struct.bxe_softc* %241, i64 %242, i32 2147483647)
  %244 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %245 = load i64, i64* @TCM_REG_PRS_IFEN, align 8
  %246 = call i32 @REG_WR(%struct.bxe_softc* %244, i64 %245, i32 1)
  %247 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %248 = load i64, i64* @CFC_REG_DEBUG0, align 8
  %249 = call i32 @REG_WR(%struct.bxe_softc* %247, i64 %248, i32 0)
  %250 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %251 = load i64, i64* @NIG_REG_PRS_REQ_IN_EN, align 8
  %252 = call i32 @REG_WR(%struct.bxe_softc* %250, i64 %251, i32 1)
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %240, %208, %161, %86, %62
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @bxe_lb_pckt(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_read_dmae(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @ecore_init_block(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @CNIC_SUPPORT(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
