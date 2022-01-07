; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_2__, %struct.attn_route*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.attn_route = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BXE_ERR_PARITY = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 = common dso_local global i32 0, align 4
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"attn: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@MAX_DYNAMIC_ATTN_GRPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"group[%d]: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_COMMAND_REG = common dso_local global i32 0, align 4
@COMMAND_REG_ATTN_BITS_CLR = common dso_local global i32 0, align 4
@BAR_IGU_INTMEM = common dso_local global i32 0, align 4
@IGU_CMD_ATTN_BIT_CLR_UPPER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"about to mask 0x%08x at %s addr 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"IGU error\0A\00", align 1
@MISC_REG_AEU_MASK_ATTN_FUNC_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_PORT0_ATT_MASK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"aeu_mask 0x%08x newly deasserted 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"new mask 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"attn_state 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"new state 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_attn_int_deasserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int_deasserted(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.attn_route, align 8
  %6 = alloca %struct.attn_route*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = call i32 @SC_PORT(%struct.bxe_softc* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = call i32 @bxe_acquire_alr(%struct.bxe_softc* %16)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i64 @bxe_chk_parity_attn(%struct.bxe_softc* %18, i32* %12, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = call i32 @bxe_int_disable(%struct.bxe_softc* %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = load i32, i32* @BXE_ERR_PARITY, align 4
  %27 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %25, i32 %26)
  %28 = load i32, i32* @taskqueue_thread, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 3
  %31 = load i32, i32* @hz, align 4
  %32 = sdiv i32 %31, 10
  %33 = call i32 @taskqueue_enqueue_timeout(i32 %28, i32* %30, i32 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %35 = call i32 @bxe_release_alr(%struct.bxe_softc* %34)
  br label %340

36:                                               ; preds = %2
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_1_FUNC_0, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 4
  %41 = add nsw i32 %38, %40
  %42 = call i8* @REG_RD(%struct.bxe_softc* %37, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_2_FUNC_0, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %48, %50
  %52 = call i8* @REG_RD(%struct.bxe_softc* %47, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %58 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_3_FUNC_0, align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 %58, %60
  %62 = call i8* @REG_RD(%struct.bxe_softc* %57, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %68 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_4_FUNC_0, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 4
  %71 = add nsw i32 %68, %70
  %72 = call i8* @REG_RD(%struct.bxe_softc* %67, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %78 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %36
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %82 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_5_FUNC_0, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %83, 4
  %85 = add nsw i32 %82, %84
  %86 = call i8* @REG_RD(%struct.bxe_softc* %81, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32 %87, i32* %90, align 4
  br label %95

91:                                               ; preds = %36
  %92 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %80
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %97 = load i32, i32* @DBG_INTR, align 4
  %98 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %96, i32 %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105, i32 %109, i32 %113, i32 %117)
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %226, %95
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MAX_DYNAMIC_ATTN_GRPS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %229

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %8, align 4
  %126 = shl i32 1, %125
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %225

129:                                              ; preds = %123
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %131 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %130, i32 0, i32 2
  %132 = load %struct.attn_route*, %struct.attn_route** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %132, i64 %134
  store %struct.attn_route* %135, %struct.attn_route** %6, align 8
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %137 = load i32, i32* @DBG_INTR, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %140 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %145 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %150 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %155 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %160 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %136, i32 %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %143, i32 %148, i32 %153, i32 %158, i32 %163)
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %166 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %171 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %169, %174
  %176 = call i32 @bxe_attn_int_deasserted4(%struct.bxe_softc* %165, i32 %175)
  %177 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %178 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %183 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %181, %186
  %188 = call i32 @bxe_attn_int_deasserted3(%struct.bxe_softc* %177, i32 %187)
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %190 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %195 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %193, %198
  %200 = call i32 @bxe_attn_int_deasserted1(%struct.bxe_softc* %189, i32 %199)
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %202 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %207 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %205, %210
  %212 = call i32 @bxe_attn_int_deasserted2(%struct.bxe_softc* %201, i32 %211)
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %214 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %219 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %217, %222
  %224 = call i32 @bxe_attn_int_deasserted0(%struct.bxe_softc* %213, i32 %223)
  br label %225

225:                                              ; preds = %129, %123
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %119

229:                                              ; preds = %119
  %230 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %231 = call i32 @bxe_release_alr(%struct.bxe_softc* %230)
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %233 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @INT_BLOCK_HC, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %229
  %239 = load i32, i32* @HC_REG_COMMAND_REG, align 4
  %240 = load i32, i32* %7, align 4
  %241 = mul nsw i32 %240, 32
  %242 = add nsw i32 %239, %241
  %243 = load i32, i32* @COMMAND_REG_ATTN_BITS_CLR, align 4
  %244 = add nsw i32 %242, %243
  store i32 %244, i32* %9, align 4
  br label %250

245:                                              ; preds = %229
  %246 = load i32, i32* @BAR_IGU_INTMEM, align 4
  %247 = load i32, i32* @IGU_CMD_ATTN_BIT_CLR_UPPER, align 4
  %248 = mul nsw i32 %247, 8
  %249 = add nsw i32 %246, %248
  store i32 %249, i32* %9, align 4
  br label %250

250:                                              ; preds = %245, %238
  %251 = load i32, i32* %4, align 4
  %252 = xor i32 %251, -1
  store i32 %252, i32* %10, align 4
  %253 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %254 = load i32, i32* @DBG_INTR, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %257 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @INT_BLOCK_HC, align 8
  %261 = icmp eq i64 %259, %260
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %264 = load i32, i32* %9, align 4
  %265 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %253, i32 %254, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %255, i8* %263, i32 %264)
  %266 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %10, align 4
  %269 = call i32 @REG_WR(%struct.bxe_softc* %266, i32 %267, i32 %268)
  %270 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %271 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = xor i32 %272, -1
  %274 = load i32, i32* %4, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %250
  %278 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %279 = call i32 @BLOGE(%struct.bxe_softc* %278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %250
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_1, align 4
  br label %287

285:                                              ; preds = %280
  %286 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  br label %287

287:                                              ; preds = %285, %283
  %288 = phi i32 [ %284, %283 ], [ %286, %285 ]
  store i32 %288, i32* %9, align 4
  %289 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %290 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  %294 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %289, i64 %293)
  %295 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %296 = load i32, i32* %9, align 4
  %297 = call i8* @REG_RD(%struct.bxe_softc* %295, i32 %296)
  %298 = ptrtoint i8* %297 to i32
  store i32 %298, i32* %11, align 4
  %299 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %300 = load i32, i32* @DBG_INTR, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %4, align 4
  %303 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %299, i32 %300, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %301, i32 %302)
  %304 = load i32, i32* %4, align 4
  %305 = and i32 %304, 1023
  %306 = load i32, i32* %11, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %11, align 4
  %308 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %309 = load i32, i32* @DBG_INTR, align 4
  %310 = load i32, i32* %11, align 4
  %311 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %308, i32 %309, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %310)
  %312 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @REG_WR(%struct.bxe_softc* %312, i32 %313, i32 %314)
  %316 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %317 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %317, %319
  %321 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %316, i64 %320)
  %322 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %323 = load i32, i32* @DBG_INTR, align 4
  %324 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %325 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %322, i32 %323, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* %4, align 4
  %329 = xor i32 %328, -1
  %330 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %331 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, %329
  store i32 %333, i32* %331, align 8
  %334 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %335 = load i32, i32* @DBG_INTR, align 4
  %336 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %337 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %334, i32 %335, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %287, %22
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_alr(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_chk_parity_attn(%struct.bxe_softc*, i32*, i32) #1

declare dso_local i32 @bxe_int_disable(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

declare dso_local i32 @bxe_release_alr(%struct.bxe_softc*) #1

declare dso_local i8* @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @bxe_attn_int_deasserted4(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_attn_int_deasserted3(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_attn_int_deasserted1(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_attn_int_deasserted2(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_attn_int_deasserted0(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i64) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
