; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64, %struct.lpt_data* }
%struct.lpt_data = type { i32, i64, i32, i64, i32, i32, i32, i64, i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: still open %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@LPTINIT = common dso_local global i32 0, align 4
@LP_BYPASS = common dso_local global i32 0, align 4
@OPEN = common dso_local global i32 0, align 4
@PPB_WAIT = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s flags 0x%x\0A\00", align 1
@LP_ENABLE_IRQ = common dso_local global i32 0, align 4
@LP_USE_IRQ = common dso_local global i32 0, align 4
@LP_NO_PRIME = common dso_local global i32 0, align 4
@LP_PRIMEOPEN = common dso_local global i32 0, align 4
@LPC_SEL = common dso_local global i32 0, align 4
@LPC_NINIT = common dso_local global i32 0, align 4
@LPINITRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"status %x\0A\00", align 1
@LPPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"lptinit\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LPS_SEL = common dso_local global i32 0, align 4
@LPS_OUT = common dso_local global i32 0, align 4
@LPS_NBSY = common dso_local global i32 0, align 4
@LPS_NERR = common dso_local global i32 0, align 4
@LP_AUTOLF = common dso_local global i32 0, align 4
@LPC_AUTOL = common dso_local global i32 0, align 4
@LPC_ENA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"irq %x\0A\00", align 1
@TOUT = common dso_local global i32 0, align 4
@LPTOUTINITIAL = common dso_local global i32 0, align 4
@lptout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"opened.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @lptopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lptopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpt_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 1
  %17 = load %struct.lpt_data*, %struct.lpt_data** %16, align 8
  store %struct.lpt_data* %17, %struct.lpt_data** %12, align 8
  %18 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %19 = icmp ne %struct.lpt_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %291

22:                                               ; preds = %4
  %23 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %24 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @device_get_parent(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @ppb_lock(i32 %28)
  %30 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %31 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %22
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @device_get_nameunit(i32 %35)
  %37 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %38 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @lprintf(i8* %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ppb_unlock(i32 %43)
  %45 = load i32, i32* @EBUSY, align 4
  store i32 %45, i32* %5, align 4
  br label %291

46:                                               ; preds = %22
  %47 = load i32, i32* @LPTINIT, align 4
  %48 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %49 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46
  %53 = load %struct.cdev*, %struct.cdev** %6, align 8
  %54 = getelementptr inbounds %struct.cdev, %struct.cdev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %57 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %59 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @LP_BYPASS, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load i32, i32* @OPEN, align 4
  %67 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %68 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @ppb_unlock(i32 %69)
  store i32 0, i32* %5, align 4
  br label %291

71:                                               ; preds = %52
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PPB_WAIT, align 4
  %74 = load i32, i32* @PPB_INTR, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @lpt_request_ppbus(i32 %72, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %80 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @ppb_unlock(i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %291

84:                                               ; preds = %71
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @device_get_nameunit(i32 %85)
  %87 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %88 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @lprintf(i8* %90)
  %92 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %93 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LP_ENABLE_IRQ, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %84
  %99 = load i32, i32* @LP_USE_IRQ, align 4
  %100 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %101 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %111

104:                                              ; preds = %84
  %105 = load i32, i32* @LP_USE_IRQ, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %108 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %113 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @LP_NO_PRIME, align 4
  %116 = sext i32 %115 to i64
  %117 = and i64 %114, %116
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %111
  %120 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %121 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @LP_PRIMEOPEN, align 4
  %124 = sext i32 %123 to i64
  %125 = and i64 %122, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %129 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127, %119
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @ppb_wctr(i32 %133, i32 0)
  %135 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %136 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = call i32 @DELAY(i32 500)
  br label %140

140:                                              ; preds = %132, %127
  br label %141

141:                                              ; preds = %140, %111
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @LPC_SEL, align 4
  %144 = load i32, i32* @LPC_NINIT, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @ppb_wctr(i32 %142, i32 %145)
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %186, %141
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* @LPINITRDY, align 4
  %151 = mul nsw i32 %150, 4
  %152 = icmp sge i32 %148, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %147
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @ppb_rstr(i32 %154)
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 @lprintf(i8* %157)
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @lpt_release_ppbus(i32 %159)
  %161 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %162 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @ppb_unlock(i32 %163)
  %165 = load i32, i32* @EBUSY, align 4
  store i32 %165, i32* %5, align 4
  br label %291

166:                                              ; preds = %147
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @LPPRI, align 4
  %170 = load i32, i32* @PCATCH, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @hz, align 4
  %173 = sdiv i32 %172, 4
  %174 = call i64 @ppb_sleep(i32 %167, i32 %168, i32 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i64, i64* @EWOULDBLOCK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %166
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @lpt_release_ppbus(i32 %178)
  %180 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %181 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @ppb_unlock(i32 %182)
  %184 = load i32, i32* @EBUSY, align 4
  store i32 %184, i32* %5, align 4
  br label %291

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @ppb_rstr(i32 %187)
  %189 = load i32, i32* @LPS_SEL, align 4
  %190 = load i32, i32* @LPS_OUT, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @LPS_NBSY, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @LPS_NERR, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %188, %195
  %197 = load i32, i32* @LPS_SEL, align 4
  %198 = load i32, i32* @LPS_NBSY, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @LPS_NERR, align 4
  %201 = or i32 %199, %200
  %202 = icmp ne i32 %196, %201
  br i1 %202, label %147, label %203

203:                                              ; preds = %186
  %204 = load i32, i32* @LPC_SEL, align 4
  %205 = load i32, i32* @LPC_NINIT, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %208 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %210 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @LP_AUTOLF, align 4
  %213 = sext i32 %212 to i64
  %214 = and i64 %211, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %203
  %217 = load i32, i32* @LPC_AUTOL, align 4
  %218 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %219 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %216, %203
  %223 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %224 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @LP_USE_IRQ, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = load i32, i32* @LPC_ENA, align 4
  %231 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %232 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %222
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %238 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ppb_wctr(i32 %236, i32 %239)
  %241 = load i32, i32* @LPTINIT, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %244 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load i32, i32* @OPEN, align 4
  %248 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %249 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %253 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %252, i32 0, i32 7
  store i64 0, i64* %253, align 8
  %254 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %255 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = call i32 @lprintf(i8* %258)
  %260 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %261 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @LP_USE_IRQ, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %235
  %267 = load i32, i32* @TOUT, align 4
  %268 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %269 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load i32, i32* @hz, align 4
  %273 = load i32, i32* @LPTOUTINITIAL, align 4
  %274 = sdiv i32 %272, %273
  %275 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %276 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %275, i32 0, i32 5
  store i32 %274, i32* %276, align 4
  %277 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %278 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %277, i32 0, i32 6
  %279 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %280 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @lptout, align 4
  %283 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %284 = call i32 @callout_reset(i32* %278, i32 %281, i32 %282, %struct.lpt_data* %283)
  br label %285

285:                                              ; preds = %266, %235
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @lpt_release_ppbus(i32 %286)
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @ppb_unlock(i32 %288)
  %290 = call i32 @lprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %291

291:                                              ; preds = %285, %177, %153, %78, %65, %34, %20
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @lpt_request_ppbus(i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @lpt_release_ppbus(i32) #1

declare dso_local i64 @ppb_sleep(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.lpt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
