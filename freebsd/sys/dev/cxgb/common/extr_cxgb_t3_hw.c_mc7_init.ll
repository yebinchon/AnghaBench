; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_mc7_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_mc7_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc7_timing_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mc7 = type { i32, i64, i32, i32* }

@mc7_init.mc7_mode = internal constant [5 x i32] [i32 1586, i32 1602, i32 1618, i32 1074, i32 1090], align 16
@mc7_init.mc7_timings = internal constant [5 x %struct.mc7_timing_params] [%struct.mc7_timing_params { i32 12, i32 3, i32 4, i32 20, i32 15, i32 6, i32 4, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.mc7_timing_params { i32 12, i32 4, i32 5, i32 20, i32 16, i32 7, i32 4, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.mc7_timing_params { i32 12, i32 5, i32 6, i32 20, i32 17, i32 8, i32 4, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.mc7_timing_params { i32 9, i32 3, i32 4, i32 15, i32 12, i32 6, i32 4, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.mc7_timing_params { i32 9, i32 4, i32 5, i32 15, i32 13, i32 7, i32 4, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0, %struct.TYPE_2__ zeroinitializer }], align 16
@A_MC7_CFG = common dso_local global i64 0, align 8
@F_SLOW = common dso_local global i32 0, align 4
@F_IFEN = common dso_local global i32 0, align 4
@A_MC7_CAL = common dso_local global i64 0, align 8
@F_SGL_CAL_EN = common dso_local global i32 0, align 4
@F_BUSY = common dso_local global i32 0, align 4
@F_CAL_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s MC7 calibration timed out\0A\00", align 1
@A_MC7_PARM = common dso_local global i64 0, align 8
@F_CLKEN = common dso_local global i32 0, align 4
@F_TERM150 = common dso_local global i32 0, align 4
@A_MC7_DLL = common dso_local global i64 0, align 8
@F_DLLENB = common dso_local global i32 0, align 4
@A_MC7_PRE = common dso_local global i64 0, align 8
@A_MC7_EXT_MODE2 = common dso_local global i64 0, align 8
@A_MC7_EXT_MODE3 = common dso_local global i64 0, align 8
@A_MC7_EXT_MODE1 = common dso_local global i64 0, align 8
@A_MC7_MODE = common dso_local global i64 0, align 8
@F_DLLRST = common dso_local global i32 0, align 4
@A_MC7_REF = common dso_local global i64 0, align 8
@F_PERREFEN = common dso_local global i32 0, align 4
@A_MC7_ECC = common dso_local global i64 0, align 8
@F_ECCGENEN = common dso_local global i32 0, align 4
@F_ECCCHKEN = common dso_local global i32 0, align 4
@A_MC7_BIST_DATA = common dso_local global i64 0, align 8
@A_MC7_BIST_ADDR_BEG = common dso_local global i64 0, align 8
@A_MC7_BIST_ADDR_END = common dso_local global i64 0, align 8
@A_MC7_BIST_OP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s MC7 BIST timed out\0A\00", align 1
@F_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc7*, i32, i32)* @mc7_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc7_init(%struct.mc7* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc7*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mc7_timing_params*, align 8
  store %struct.mc7* %0, %struct.mc7** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mc7*, %struct.mc7** %5, align 8
  %16 = getelementptr inbounds %struct.mc7, %struct.mc7* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x %struct.mc7_timing_params], [5 x %struct.mc7_timing_params]* @mc7_init.mc7_timings, i64 0, i64 %19
  store %struct.mc7_timing_params* %20, %struct.mc7_timing_params** %14, align 8
  %21 = load %struct.mc7*, %struct.mc7** %5, align 8
  %22 = getelementptr inbounds %struct.mc7, %struct.mc7* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %420

26:                                               ; preds = %3
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.mc7*, %struct.mc7** %5, align 8
  %29 = getelementptr inbounds %struct.mc7, %struct.mc7* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @A_MC7_CFG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @t3_read_reg(i32* %27, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @F_SLOW, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @G_WIDTH(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @G_DEN(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load %struct.mc7*, %struct.mc7** %5, align 8
  %43 = getelementptr inbounds %struct.mc7, %struct.mc7* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @A_MC7_CFG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @F_IFEN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @t3_write_reg(i32* %41, i64 %46, i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load %struct.mc7*, %struct.mc7** %5, align 8
  %53 = getelementptr inbounds %struct.mc7, %struct.mc7* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @A_MC7_CFG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @t3_read_reg(i32* %51, i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = call i32 @msleep(i32 1)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %99, label %61

61:                                               ; preds = %26
  %62 = load i32*, i32** %13, align 8
  %63 = load %struct.mc7*, %struct.mc7** %5, align 8
  %64 = getelementptr inbounds %struct.mc7, %struct.mc7* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @A_MC7_CAL, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* @F_SGL_CAL_EN, align 4
  %69 = call i32 @t3_write_reg(i32* %62, i64 %67, i32 %68)
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.mc7*, %struct.mc7** %5, align 8
  %72 = getelementptr inbounds %struct.mc7, %struct.mc7* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @A_MC7_CAL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @t3_read_reg(i32* %70, i64 %75)
  %77 = call i32 @msleep(i32 1)
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.mc7*, %struct.mc7** %5, align 8
  %80 = getelementptr inbounds %struct.mc7, %struct.mc7* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @A_MC7_CAL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @t3_read_reg(i32* %78, i64 %83)
  %85 = load i32, i32* @F_BUSY, align 4
  %86 = load i32, i32* @F_SGL_CAL_EN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @F_CAL_FAULT, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %61
  %93 = load i32*, i32** %13, align 8
  %94 = load %struct.mc7*, %struct.mc7** %5, align 8
  %95 = getelementptr inbounds %struct.mc7, %struct.mc7* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @CH_ERR(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %419

98:                                               ; preds = %61
  br label %99

99:                                               ; preds = %98, %26
  %100 = load i32*, i32** %13, align 8
  %101 = load %struct.mc7*, %struct.mc7** %5, align 8
  %102 = getelementptr inbounds %struct.mc7, %struct.mc7* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @A_MC7_PARM, align 8
  %105 = add nsw i64 %103, %104
  %106 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %107 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @V_ACTTOPREDLY(i32 %108)
  %110 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %111 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @V_ACTTORDWRDLY(i32 %112)
  %114 = or i32 %109, %113
  %115 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %116 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @V_PRECYC(i32 %117)
  %119 = or i32 %114, %118
  %120 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %121 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %120, i32 0, i32 9
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @V_REFCYC(i32 %126)
  %128 = or i32 %119, %127
  %129 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %130 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @V_BKCYC(i32 %131)
  %133 = or i32 %128, %132
  %134 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %135 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @V_WRTORDDLY(i32 %136)
  %138 = or i32 %133, %137
  %139 = load %struct.mc7_timing_params*, %struct.mc7_timing_params** %14, align 8
  %140 = getelementptr inbounds %struct.mc7_timing_params, %struct.mc7_timing_params* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @V_RDTOWRDLY(i32 %141)
  %143 = or i32 %138, %142
  %144 = call i32 @t3_write_reg(i32* %100, i64 %105, i32 %143)
  %145 = load i32*, i32** %13, align 8
  %146 = load %struct.mc7*, %struct.mc7** %5, align 8
  %147 = getelementptr inbounds %struct.mc7, %struct.mc7* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @A_MC7_CFG, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @F_CLKEN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @F_TERM150, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @t3_write_reg(i32* %145, i64 %150, i32 %155)
  %157 = load i32*, i32** %13, align 8
  %158 = load %struct.mc7*, %struct.mc7** %5, align 8
  %159 = getelementptr inbounds %struct.mc7, %struct.mc7* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @A_MC7_CFG, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @t3_read_reg(i32* %157, i64 %162)
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %99
  %167 = load i32*, i32** %13, align 8
  %168 = load %struct.mc7*, %struct.mc7** %5, align 8
  %169 = getelementptr inbounds %struct.mc7, %struct.mc7* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @A_MC7_DLL, align 8
  %172 = add nsw i64 %170, %171
  %173 = load i32, i32* @F_DLLENB, align 4
  %174 = load i32, i32* @F_DLLENB, align 4
  %175 = call i32 @t3_set_reg_field(i32* %167, i64 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %166, %99
  %177 = call i32 @udelay(i32 1)
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 3, i32 6
  store i32 %181, i32* %8, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load %struct.mc7*, %struct.mc7** %5, align 8
  %184 = getelementptr inbounds %struct.mc7, %struct.mc7* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @A_MC7_PRE, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i64 @wrreg_wait(i32* %182, i64 %187, i32 0)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %218, label %190

190:                                              ; preds = %176
  %191 = load i32*, i32** %13, align 8
  %192 = load %struct.mc7*, %struct.mc7** %5, align 8
  %193 = getelementptr inbounds %struct.mc7, %struct.mc7* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @A_MC7_EXT_MODE2, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i64 @wrreg_wait(i32* %191, i64 %196, i32 0)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %218, label %199

199:                                              ; preds = %190
  %200 = load i32*, i32** %13, align 8
  %201 = load %struct.mc7*, %struct.mc7** %5, align 8
  %202 = getelementptr inbounds %struct.mc7, %struct.mc7* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @A_MC7_EXT_MODE3, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i64 @wrreg_wait(i32* %200, i64 %205, i32 0)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %199
  %209 = load i32*, i32** %13, align 8
  %210 = load %struct.mc7*, %struct.mc7** %5, align 8
  %211 = getelementptr inbounds %struct.mc7, %struct.mc7* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @A_MC7_EXT_MODE1, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i32, i32* %8, align 4
  %216 = call i64 @wrreg_wait(i32* %209, i64 %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %208, %199, %190, %176
  br label %419

219:                                              ; preds = %208
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %239, label %222

222:                                              ; preds = %219
  %223 = load i32*, i32** %13, align 8
  %224 = load %struct.mc7*, %struct.mc7** %5, align 8
  %225 = getelementptr inbounds %struct.mc7, %struct.mc7* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @A_MC7_MODE, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @t3_write_reg(i32* %223, i64 %228, i32 256)
  %230 = load i32*, i32** %13, align 8
  %231 = load %struct.mc7*, %struct.mc7** %5, align 8
  %232 = getelementptr inbounds %struct.mc7, %struct.mc7* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @A_MC7_DLL, align 8
  %235 = add nsw i64 %233, %234
  %236 = load i32, i32* @F_DLLRST, align 4
  %237 = call i32 @t3_set_reg_field(i32* %230, i64 %235, i32 %236, i32 0)
  %238 = call i32 @udelay(i32 5)
  br label %239

239:                                              ; preds = %222, %219
  %240 = load i32*, i32** %13, align 8
  %241 = load %struct.mc7*, %struct.mc7** %5, align 8
  %242 = getelementptr inbounds %struct.mc7, %struct.mc7* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @A_MC7_PRE, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i64 @wrreg_wait(i32* %240, i64 %245, i32 0)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %300, label %248

248:                                              ; preds = %239
  %249 = load i32*, i32** %13, align 8
  %250 = load %struct.mc7*, %struct.mc7** %5, align 8
  %251 = getelementptr inbounds %struct.mc7, %struct.mc7* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @A_MC7_REF, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i64 @wrreg_wait(i32* %249, i64 %254, i32 0)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %300, label %257

257:                                              ; preds = %248
  %258 = load i32*, i32** %13, align 8
  %259 = load %struct.mc7*, %struct.mc7** %5, align 8
  %260 = getelementptr inbounds %struct.mc7, %struct.mc7* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @A_MC7_REF, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i64 @wrreg_wait(i32* %258, i64 %263, i32 0)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %300, label %266

266:                                              ; preds = %257
  %267 = load i32*, i32** %13, align 8
  %268 = load %struct.mc7*, %struct.mc7** %5, align 8
  %269 = getelementptr inbounds %struct.mc7, %struct.mc7* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @A_MC7_MODE, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [5 x i32], [5 x i32]* @mc7_init.mc7_mode, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @wrreg_wait(i32* %267, i64 %272, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %300, label %279

279:                                              ; preds = %266
  %280 = load i32*, i32** %13, align 8
  %281 = load %struct.mc7*, %struct.mc7** %5, align 8
  %282 = getelementptr inbounds %struct.mc7, %struct.mc7* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @A_MC7_EXT_MODE1, align 8
  %285 = add nsw i64 %283, %284
  %286 = load i32, i32* %8, align 4
  %287 = or i32 %286, 896
  %288 = call i64 @wrreg_wait(i32* %280, i64 %285, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %279
  %291 = load i32*, i32** %13, align 8
  %292 = load %struct.mc7*, %struct.mc7** %5, align 8
  %293 = getelementptr inbounds %struct.mc7, %struct.mc7* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @A_MC7_EXT_MODE1, align 8
  %296 = add nsw i64 %294, %295
  %297 = load i32, i32* %8, align 4
  %298 = call i64 @wrreg_wait(i32* %291, i64 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %290, %279, %266, %257, %248, %239
  br label %419

301:                                              ; preds = %290
  %302 = load i32, i32* %6, align 4
  %303 = mul i32 %302, 7812
  %304 = load i32, i32* %6, align 4
  %305 = udiv i32 %304, 2
  %306 = add i32 %303, %305
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = udiv i32 %307, 1000000
  store i32 %308, i32* %6, align 4
  %309 = load i32*, i32** %13, align 8
  %310 = load %struct.mc7*, %struct.mc7** %5, align 8
  %311 = getelementptr inbounds %struct.mc7, %struct.mc7* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @A_MC7_REF, align 8
  %314 = add nsw i64 %312, %313
  %315 = load i32, i32* @F_PERREFEN, align 4
  %316 = load i32, i32* %6, align 4
  %317 = call i32 @V_PREREFDIV(i32 %316)
  %318 = or i32 %315, %317
  %319 = call i32 @t3_write_reg(i32* %309, i64 %314, i32 %318)
  %320 = load i32*, i32** %13, align 8
  %321 = load %struct.mc7*, %struct.mc7** %5, align 8
  %322 = getelementptr inbounds %struct.mc7, %struct.mc7* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @A_MC7_REF, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @t3_read_reg(i32* %320, i64 %325)
  %327 = load i32*, i32** %13, align 8
  %328 = load %struct.mc7*, %struct.mc7** %5, align 8
  %329 = getelementptr inbounds %struct.mc7, %struct.mc7* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @A_MC7_ECC, align 8
  %332 = add nsw i64 %330, %331
  %333 = load i32, i32* @F_ECCGENEN, align 4
  %334 = load i32, i32* @F_ECCCHKEN, align 4
  %335 = or i32 %333, %334
  %336 = call i32 @t3_write_reg(i32* %327, i64 %332, i32 %335)
  %337 = load i32*, i32** %13, align 8
  %338 = load %struct.mc7*, %struct.mc7** %5, align 8
  %339 = getelementptr inbounds %struct.mc7, %struct.mc7* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @A_MC7_BIST_DATA, align 8
  %342 = add nsw i64 %340, %341
  %343 = call i32 @t3_write_reg(i32* %337, i64 %342, i32 0)
  %344 = load i32*, i32** %13, align 8
  %345 = load %struct.mc7*, %struct.mc7** %5, align 8
  %346 = getelementptr inbounds %struct.mc7, %struct.mc7* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @A_MC7_BIST_ADDR_BEG, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @t3_write_reg(i32* %344, i64 %349, i32 0)
  %351 = load i32*, i32** %13, align 8
  %352 = load %struct.mc7*, %struct.mc7** %5, align 8
  %353 = getelementptr inbounds %struct.mc7, %struct.mc7* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @A_MC7_BIST_ADDR_END, align 8
  %356 = add nsw i64 %354, %355
  %357 = load %struct.mc7*, %struct.mc7** %5, align 8
  %358 = getelementptr inbounds %struct.mc7, %struct.mc7* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = shl i32 %359, %360
  %362 = sub i32 %361, 1
  %363 = call i32 @t3_write_reg(i32* %351, i64 %356, i32 %362)
  %364 = load i32*, i32** %13, align 8
  %365 = load %struct.mc7*, %struct.mc7** %5, align 8
  %366 = getelementptr inbounds %struct.mc7, %struct.mc7* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @A_MC7_BIST_OP, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i32 @V_OP(i32 1)
  %371 = call i32 @t3_write_reg(i32* %364, i64 %369, i32 %370)
  %372 = load i32*, i32** %13, align 8
  %373 = load %struct.mc7*, %struct.mc7** %5, align 8
  %374 = getelementptr inbounds %struct.mc7, %struct.mc7* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @A_MC7_BIST_OP, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i32 @t3_read_reg(i32* %372, i64 %377)
  store i32 50, i32* %12, align 4
  br label %379

379:                                              ; preds = %397, %301
  %380 = call i32 @msleep(i32 250)
  %381 = load i32*, i32** %13, align 8
  %382 = load %struct.mc7*, %struct.mc7** %5, align 8
  %383 = getelementptr inbounds %struct.mc7, %struct.mc7* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @A_MC7_BIST_OP, align 8
  %386 = add nsw i64 %384, %385
  %387 = call i32 @t3_read_reg(i32* %381, i64 %386)
  store i32 %387, i32* %8, align 4
  br label %388

388:                                              ; preds = %379
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* @F_BUSY, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %388
  %394 = load i32, i32* %12, align 4
  %395 = add i32 %394, -1
  store i32 %395, i32* %12, align 4
  %396 = icmp ne i32 %395, 0
  br label %397

397:                                              ; preds = %393, %388
  %398 = phi i1 [ false, %388 ], [ %396, %393 ]
  br i1 %398, label %379, label %399

399:                                              ; preds = %397
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* @F_BUSY, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %399
  %405 = load i32*, i32** %13, align 8
  %406 = load %struct.mc7*, %struct.mc7** %5, align 8
  %407 = getelementptr inbounds %struct.mc7, %struct.mc7* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @CH_ERR(i32* %405, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %408)
  br label %419

410:                                              ; preds = %399
  %411 = load i32*, i32** %13, align 8
  %412 = load %struct.mc7*, %struct.mc7** %5, align 8
  %413 = getelementptr inbounds %struct.mc7, %struct.mc7* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @A_MC7_CFG, align 8
  %416 = add nsw i64 %414, %415
  %417 = load i32, i32* @F_RDY, align 4
  %418 = call i32 @t3_set_reg_field(i32* %411, i64 %416, i32 0, i32 %417)
  store i32 0, i32* %4, align 4
  br label %420

419:                                              ; preds = %404, %300, %218, %92
  store i32 -1, i32* %4, align 4
  br label %420

420:                                              ; preds = %419, %410, %25
  %421 = load i32, i32* %4, align 4
  ret i32 %421
}

declare dso_local i32 @t3_read_reg(i32*, i64) #1

declare dso_local i32 @G_WIDTH(i32) #1

declare dso_local i32 @G_DEN(i32) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @CH_ERR(i32*, i8*, i32) #1

declare dso_local i32 @V_ACTTOPREDLY(i32) #1

declare dso_local i32 @V_ACTTORDWRDLY(i32) #1

declare dso_local i32 @V_PRECYC(i32) #1

declare dso_local i32 @V_REFCYC(i32) #1

declare dso_local i32 @V_BKCYC(i32) #1

declare dso_local i32 @V_WRTORDDLY(i32) #1

declare dso_local i32 @V_RDTOWRDLY(i32) #1

declare dso_local i32 @t3_set_reg_field(i32*, i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @wrreg_wait(i32*, i64, i32) #1

declare dso_local i32 @V_PREREFDIV(i32) #1

declare dso_local i32 @V_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
