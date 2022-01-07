; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9285_hw_pa_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9285_hw_pa_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@__const.ar9285_hw_pa_cal.regList = private unnamed_addr constant [7 x [2 x i32]] [[2 x i32] [i32 30828, i32 0], [2 x i32] [i32 30804, i32 0], [2 x i32] [i32 30752, i32 0], [2 x i32] [i32 30756, i32 0], [2 x i32] [i32 30824, i32 0], [2 x i32] [i32 30780, i32 0], [2 x i32] [i32 30776, i32 0]], align 16
@AR_EEP_TXGAIN_TYPE = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global i32 0, align 4
@AR5416_EEP_TXGAIN_HIGH_POWER = common dso_local global i64 0, align 8
@HAL_DEBUG_PERCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Running PA Calibration\0A\00", align 1
@AR9285_AN_TOP3 = common dso_local global i32 0, align 4
@AR9285_AN_TOP3_PWDDAC = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDRXTXBB1 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDV2I = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDDACIF = common dso_local global i32 0, align 4
@AR9285_AN_RF2G2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G2_OFFCAL = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7_PWDDB = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_ENPACAL = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPADRV1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPADRV2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPAOUT = common dso_local global i32 0, align 4
@AR9285_AN_RF2G8 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G8_PADRVGN2TAB0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7_PADRVGN2TAB0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6_CCOMP = common dso_local global i32 0, align 4
@AR9285_AN_TOP2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6_OFFS = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_PDVCCOMP = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_SPARE9 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G9 = common dso_local global i32 0, align 4
@MAX_PACAL_SKIPCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar9285_hw_pa_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9285_hw_pa_cal(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [7 x [2 x i32]], align 16
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast [7 x [2 x i32]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([7 x [2 x i32]]* @__const.ar9285_hw_pa_cal.regList to i8*), i64 56, i1 false)
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load i32, i32* @AR_EEP_TXGAIN_TYPE, align 4
  %16 = load i32, i32* @AH_NULL, align 4
  %17 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %14, i32 %15, i32 %16)
  %18 = load i64, i64* @AR5416_EEP_TXGAIN_HIGH_POWER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %311

21:                                               ; preds = %2
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %24 = call i32 @HALDEBUG(%struct.ath_hal* %22, i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %43, %21
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %12, i64 0, i64 0
  %28 = bitcast [2 x i32]* %27 to i32**
  %29 = call i32 @N(i32** %28)
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %12, i64 0, i64 %34
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @OS_REG_READ(%struct.ath_hal* %32, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %12, i64 0, i64 %40
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 1
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = call i32 @OS_REG_READ(%struct.ath_hal* %47, i32 30772)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, -2
  store i32 %50, i32* %5, align 4
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @OS_REG_WRITE(%struct.ath_hal* %51, i32 30772, i32 %52)
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = call i32 @OS_REG_READ(%struct.ath_hal* %54, i32 38920)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 134217728
  store i32 %57, i32* %5, align 4
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 38920, i32 %59)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load i32, i32* @AR9285_AN_TOP3, align 4
  %63 = load i32, i32* @AR9285_AN_TOP3_PWDDAC, align 4
  %64 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %61, i32 %62, i32 %63, i32 1)
  %65 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %66 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %67 = load i32, i32* @AR9285_AN_RXTXBB1_PDRXTXBB1, align 4
  %68 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %65, i32 %66, i32 %67, i32 1)
  %69 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %70 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %71 = load i32, i32* @AR9285_AN_RXTXBB1_PDV2I, align 4
  %72 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %75 = load i32, i32* @AR9285_AN_RXTXBB1_PDDACIF, align 4
  %76 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %73, i32 %74, i32 %75, i32 1)
  %77 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %78 = load i32, i32* @AR9285_AN_RF2G2, align 4
  %79 = load i32, i32* @AR9285_AN_RF2G2_OFFCAL, align 4
  %80 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %82 = load i32, i32* @AR9285_AN_RF2G7, align 4
  %83 = load i32, i32* @AR9285_AN_RF2G7_PWDDB, align 4
  %84 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %86 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %87 = load i32, i32* @AR9285_AN_RF2G1_ENPACAL, align 4
  %88 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %90 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %91 = load i32, i32* @AR9285_AN_RF2G1_PDPADRV1, align 4
  %92 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %95 = load i32, i32* @AR9285_AN_RF2G1_PDPADRV2, align 4
  %96 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %93, i32 %94, i32 %95, i32 0)
  %97 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %98 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %99 = load i32, i32* @AR9285_AN_RF2G1_PDPAOUT, align 4
  %100 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %97, i32 %98, i32 %99, i32 0)
  %101 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %102 = load i32, i32* @AR9285_AN_RF2G8, align 4
  %103 = load i32, i32* @AR9285_AN_RF2G8_PADRVGN2TAB0, align 4
  %104 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %101, i32 %102, i32 %103, i32 7)
  %105 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %106 = load i32, i32* @AR9285_AN_RF2G7, align 4
  %107 = load i32, i32* @AR9285_AN_RF2G7_PADRVGN2TAB0, align 4
  %108 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %105, i32 %106, i32 %107, i32 0)
  %109 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %110 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %111 = call i32 @OS_REG_READ(%struct.ath_hal* %109, i32 %110)
  %112 = load i32, i32* @AR9285_AN_RF2G6_CCOMP, align 4
  %113 = call i32 @MS(i32 %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %115 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %116 = load i32, i32* @AR9285_AN_RF2G6_CCOMP, align 4
  %117 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %114, i32 %115, i32 %116, i32 15)
  %118 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %119 = load i32, i32* @AR9285_AN_TOP2, align 4
  %120 = call i32 @OS_REG_WRITE(%struct.ath_hal* %118, i32 %119, i32 -905750368)
  %121 = call i32 @OS_DELAY(i32 30)
  %122 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %123 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %124 = load i32, i32* @AR9285_AN_RF2G6_OFFS, align 4
  %125 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %122, i32 %123, i32 %124, i32 0)
  %126 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %127 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %128 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %129 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %126, i32 %127, i32 %128, i32 0)
  store i32 6, i32* %6, align 4
  br label %130

130:                                              ; preds = %166, %46
  %131 = load i32, i32* %6, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %169

133:                                              ; preds = %130
  %134 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %135 = call i32 @OS_REG_READ(%struct.ath_hal* %134, i32 30772)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 19, %136
  %138 = shl i32 1, %137
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @OS_REG_WRITE(%struct.ath_hal* %141, i32 30772, i32 %142)
  %144 = call i32 @OS_DELAY(i32 1)
  %145 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %146 = call i32 @OS_REG_READ(%struct.ath_hal* %145, i32 30772)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 19, %147
  %149 = shl i32 1, %148
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %154 = call i32 @OS_REG_READ(%struct.ath_hal* %153, i32 30784)
  %155 = load i32, i32* @AR9285_AN_RXTXBB1_SPARE9, align 4
  %156 = call i32 @MS(i32 %154, i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 19, %158
  %160 = shl i32 %157, %159
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @OS_REG_WRITE(%struct.ath_hal* %163, i32 30772, i32 %164)
  br label %166

166:                                              ; preds = %133
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %6, align 4
  br label %130

169:                                              ; preds = %130
  %170 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %171 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %172 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %173 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %170, i32 %171, i32 %172, i32 1)
  %174 = call i32 @OS_DELAY(i32 1)
  %175 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %176 = load i32, i32* @AR9285_AN_RF2G9, align 4
  %177 = call i32 @OS_REG_READ(%struct.ath_hal* %175, i32 %176)
  %178 = load i32, i32* @AR9285_AN_RXTXBB1_SPARE9, align 4
  %179 = call i32 @MS(i32 %177, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %181 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %182 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %186 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %187 = call i32 @OS_REG_READ(%struct.ath_hal* %185, i32 %186)
  %188 = load i32, i32* @AR9285_AN_RF2G6_OFFS, align 4
  %189 = call i32 @MS(i32 %187, i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %191 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %192 = call i32 @OS_REG_READ(%struct.ath_hal* %190, i32 %191)
  %193 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %194 = call i32 @MS(i32 %192, i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %8, align 4
  %196 = shl i32 %195, 1
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = sub nsw i32 %199, 0
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = ashr i32 %201, 1
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %7, align 4
  %204 = and i32 %203, 1
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %244, label %207

207:                                              ; preds = %169
  %208 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %209 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %208)
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %244

215:                                              ; preds = %207
  %216 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %217 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %216)
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @MAX_PACAL_SKIPCOUNT, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %215
  %224 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %225 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 2, %228
  %230 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %231 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %230)
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  store i32 %229, i32* %233, align 4
  br label %234

234:                                              ; preds = %223, %215
  %235 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %236 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %235)
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %241 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %240)
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  store i32 %239, i32* %243, align 4
  br label %258

244:                                              ; preds = %207, %169
  %245 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %246 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %245)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 1
  store i32 1, i32* %248, align 4
  %249 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %250 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %249)
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  store i32 0, i32* %252, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %255 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %254)
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %244, %234
  %259 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %260 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %261 = load i32, i32* @AR9285_AN_RF2G6_OFFS, align 4
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %259, i32 %260, i32 %261, i32 %262)
  %264 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %265 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %266 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %264, i32 %265, i32 %266, i32 %267)
  %269 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %270 = call i32 @OS_REG_READ(%struct.ath_hal* %269, i32 30772)
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %5, align 4
  %272 = or i32 %271, 1
  store i32 %272, i32* %5, align 4
  %273 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %274 = load i32, i32* %5, align 4
  %275 = call i32 @OS_REG_WRITE(%struct.ath_hal* %273, i32 30772, i32 %274)
  %276 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %277 = call i32 @OS_REG_READ(%struct.ath_hal* %276, i32 38920)
  store i32 %277, i32* %5, align 4
  %278 = load i32, i32* %5, align 4
  %279 = and i32 %278, -134217729
  store i32 %279, i32* %5, align 4
  %280 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %281 = load i32, i32* %5, align 4
  %282 = call i32 @OS_REG_WRITE(%struct.ath_hal* %280, i32 38920, i32 %281)
  store i32 0, i32* %6, align 4
  br label %283

283:                                              ; preds = %302, %258
  %284 = load i32, i32* %6, align 4
  %285 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %12, i64 0, i64 0
  %286 = bitcast [2 x i32]* %285 to i32**
  %287 = call i32 @N(i32** %286)
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %283
  %290 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %12, i64 0, i64 %292
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %293, i64 0, i64 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %12, i64 0, i64 %297
  %299 = getelementptr inbounds [2 x i32], [2 x i32]* %298, i64 0, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @OS_REG_WRITE(%struct.ath_hal* %290, i32 %295, i32 %300)
  br label %302

302:                                              ; preds = %289
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %283

305:                                              ; preds = %283
  %306 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %307 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %308 = load i32, i32* @AR9285_AN_RF2G6_CCOMP, align 4
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %306, i32 %307, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %305, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ath_hal_eepromGet(%struct.ath_hal*, i32, i32) #2

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*) #2

declare dso_local i32 @N(i32**) #2

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #2

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #2

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #2

declare dso_local i32 @MS(i32, i32) #2

declare dso_local i32 @OS_DELAY(i32) #2

declare dso_local %struct.TYPE_4__* @AH9285(%struct.ath_hal*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
