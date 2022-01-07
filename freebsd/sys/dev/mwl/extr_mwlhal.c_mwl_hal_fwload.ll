; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_fwload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_fwload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { i64, i64*, i32 }
%struct.firmware = type { i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"mw88W8363fw\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mwlboot\00", align 1
@HostCmd_SOFTAP_FWRDY_SIGNATURE = common dso_local global i32 0, align 4
@HostCmd_SOFTAP_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not load firmware image %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"firmware image %s too small\0A\00", align 1
@MACREG_REG_A2H_INTERRUPT_CLEAR_SEL = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_MASK = common dso_local global i32 0, align 4
@MACREG_REG_A2H_INTERRUPT_CAUSE = common dso_local global i32 0, align 4
@MACREG_REG_A2H_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MACREG_REG_A2H_INTERRUPT_STATUS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"load %s firmware image (%u bytes)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FW_CHECK_USECS = common dso_local global i32 0, align 4
@MACREG_REG_INT_CODE = common dso_local global i32 0, align 4
@MACREG_REG_SCRATCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@FW_DOWNLOAD_BLOCK_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@HostCmd_STA_MODE = common dso_local global i32 0, align 4
@FW_MAX_NUM_CHECKS = common dso_local global i32 0, align 4
@MACREG_REG_GEN_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_hal_fwload(%struct.mwl_hal* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_hal*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mwl_hal_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mwl_hal* %0, %struct.mwl_hal** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %23 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %22)
  store %struct.mwl_hal_priv* %23, %struct.mwl_hal_priv** %6, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store %struct.firmware* null, %struct.firmware** %9, align 8
  %24 = load i32, i32* @HostCmd_SOFTAP_FWRDY_SIGNATURE, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @HostCmd_SOFTAP_MODE, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.firmware* @firmware_get(i8* %26)
  store %struct.firmware* %27, %struct.firmware** %10, align 8
  %28 = load %struct.firmware*, %struct.firmware** %10, align 8
  %29 = icmp eq %struct.firmware* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %3, align 4
  br label %331

37:                                               ; preds = %2
  %38 = load %struct.firmware*, %struct.firmware** %10, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %15, align 8
  %41 = load %struct.firmware*, %struct.firmware** %10, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %48 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %20, align 4
  br label %319

53:                                               ; preds = %37
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = call %struct.firmware* @firmware_get(i8* %74)
  store %struct.firmware* %75, %struct.firmware** %9, align 8
  %76 = load %struct.firmware*, %struct.firmware** %9, align 8
  %77 = icmp eq %struct.firmware* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %80 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %20, align 4
  br label %319

85:                                               ; preds = %73
  br label %87

86:                                               ; preds = %68, %63, %58, %53
  store %struct.firmware* null, %struct.firmware** %9, align 8
  br label %87

87:                                               ; preds = %86, %85
  %88 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %89 = call i32 @mwlFwReset(%struct.mwl_hal_priv* %88)
  %90 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %91 = load i32, i32* @MACREG_REG_A2H_INTERRUPT_CLEAR_SEL, align 4
  %92 = load i32, i32* @MACREG_A2HRIC_BIT_MASK, align 4
  %93 = call i32 @WR4(%struct.mwl_hal_priv* %90, i32 %91, i32 %92)
  %94 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %95 = load i32, i32* @MACREG_REG_A2H_INTERRUPT_CAUSE, align 4
  %96 = call i32 @WR4(%struct.mwl_hal_priv* %94, i32 %95, i32 0)
  %97 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %98 = load i32, i32* @MACREG_REG_A2H_INTERRUPT_MASK, align 4
  %99 = call i32 @WR4(%struct.mwl_hal_priv* %97, i32 %98, i32 0)
  %100 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %101 = load i32, i32* @MACREG_REG_A2H_INTERRUPT_STATUS_MASK, align 4
  %102 = load i32, i32* @MACREG_A2HRIC_BIT_MASK, align 4
  %103 = call i32 @WR4(%struct.mwl_hal_priv* %100, i32 %101, i32 %102)
  %104 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %105 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %87
  %109 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %110 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %111 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @mwlPokeSdramController(%struct.mwl_hal_priv* %109, i64 %112)
  br label %114

114:                                              ; preds = %108, %87
  %115 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %116 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %18, align 4
  %120 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %118, i32 %119)
  %121 = load %struct.firmware*, %struct.firmware** %9, align 8
  %122 = icmp ne %struct.firmware* %121, null
  br i1 %122, label %123, label %228

123:                                              ; preds = %114
  %124 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %125 = load %struct.firmware*, %struct.firmware** %9, align 8
  %126 = getelementptr inbounds %struct.firmware, %struct.firmware* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.firmware*, %struct.firmware** %9, align 8
  %129 = getelementptr inbounds %struct.firmware, %struct.firmware* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.firmware*, %struct.firmware** %9, align 8
  %132 = getelementptr inbounds %struct.firmware, %struct.firmware* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @mwlSendBlock(%struct.mwl_hal_priv* %124, i32 %127, i32* %130, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %123
  %137 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %138 = call i32 @mwlSendBlock(%struct.mwl_hal_priv* %137, i32 0, i32* null, i32 0)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %123
  %141 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %141, i32* %20, align 4
  br label %316

142:                                              ; preds = %136
  %143 = load i32, i32* @FW_CHECK_USECS, align 4
  %144 = mul nsw i32 200, %143
  %145 = call i32 @DELAY(i32 %144)
  %146 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %147 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %152 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %153 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @mwlPokeSdramController(%struct.mwl_hal_priv* %151, i64 %154)
  br label %156

156:                                              ; preds = %150, %142
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  %157 = load i32*, i32** %15, align 8
  store i32* %157, i32** %13, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32* %161, i32** %14, align 8
  br label %162

162:                                              ; preds = %226, %156
  %163 = load i32*, i32** %13, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = icmp ult i32* %163, %164
  br i1 %165, label %166, label %227

166:                                              ; preds = %162
  %167 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %168 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %169 = call i32 @WR4(%struct.mwl_hal_priv* %167, i32 %168, i32 0)
  %170 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %171 = load i32, i32* @MACREG_REG_SCRATCH, align 4
  %172 = call i32 @RD4(%struct.mwl_hal_priv* %170, i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %227

176:                                              ; preds = %166
  %177 = load i32, i32* %16, align 4
  %178 = icmp sgt i32 %177, 3072
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %20, align 4
  br label %316

181:                                              ; preds = %176
  %182 = load i32, i32* %16, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i32, i32* %17, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %13, align 8
  store i32 0, i32* %21, align 4
  br label %199

190:                                              ; preds = %181
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %21, align 4
  %193 = icmp sgt i32 %192, 2
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @ELOOP, align 4
  store i32 %195, i32* %20, align 4
  br label %316

196:                                              ; preds = %190
  %197 = load i32, i32* %16, align 4
  %198 = and i32 %197, -2
  store i32 %198, i32* %16, align 4
  br label %199

199:                                              ; preds = %196, %185
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = load i32*, i32** %14, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = ptrtoint i32* %202 to i64
  %205 = ptrtoint i32* %203 to i64
  %206 = sub i64 %204, %205
  %207 = sdiv exact i64 %206, 4
  %208 = icmp sgt i64 %201, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %199
  %210 = load i32*, i32** %14, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = ptrtoint i32* %210 to i64
  %213 = ptrtoint i32* %211 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 4
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %16, align 4
  br label %217

217:                                              ; preds = %209, %199
  %218 = load i32, i32* %16, align 4
  store i32 %218, i32* %17, align 4
  %219 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %220 = load i32*, i32** %13, align 8
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @mwlSendBlock2(%struct.mwl_hal_priv* %219, i32* %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %217
  %225 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %225, i32* %20, align 4
  br label %316

226:                                              ; preds = %217
  br label %162

227:                                              ; preds = %175, %162
  br label %266

228:                                              ; preds = %114
  %229 = load i32*, i32** %15, align 8
  store i32* %229, i32** %13, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32* %233, i32** %14, align 8
  br label %234

234:                                              ; preds = %260, %228
  %235 = load i32*, i32** %13, align 8
  %236 = load i32*, i32** %14, align 8
  %237 = icmp ult i32* %235, %236
  br i1 %237, label %238, label %265

238:                                              ; preds = %234
  %239 = load i32*, i32** %14, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = ptrtoint i32* %239 to i64
  %242 = ptrtoint i32* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 4
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %17, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* @FW_DOWNLOAD_BLOCK_SIZE, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %238
  %250 = load i32, i32* @FW_DOWNLOAD_BLOCK_SIZE, align 4
  store i32 %250, i32* %17, align 4
  br label %251

251:                                              ; preds = %249, %238
  %252 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %253 = load i32, i32* @FW_DOWNLOAD_BLOCK_SIZE, align 4
  %254 = load i32*, i32** %13, align 8
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @mwlSendBlock(%struct.mwl_hal_priv* %252, i32 %253, i32* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %251
  %259 = load i32, i32* @EIO, align 4
  store i32 %259, i32* %20, align 4
  br label %316

260:                                              ; preds = %251
  %261 = load i32, i32* %17, align 4
  %262 = load i32*, i32** %13, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %13, align 8
  br label %234

265:                                              ; preds = %234
  br label %266

266:                                              ; preds = %265, %227
  %267 = load %struct.firmware*, %struct.firmware** %9, align 8
  %268 = icmp ne %struct.firmware* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.firmware*, %struct.firmware** %9, align 8
  %271 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %272 = call i32 @firmware_put(%struct.firmware* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %266
  %274 = load %struct.firmware*, %struct.firmware** %10, align 8
  %275 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %276 = call i32 @firmware_put(%struct.firmware* %274, i32 %275)
  %277 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %278 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 1
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* @HostCmd_STA_MODE, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %273
  %285 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %286 = call i32 @mwlTriggerPciCmd(%struct.mwl_hal_priv* %285)
  br label %287

287:                                              ; preds = %284, %273
  store i32 0, i32* %19, align 4
  br label %288

288:                                              ; preds = %311, %287
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* @FW_MAX_NUM_CHECKS, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %288
  %293 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %294 = load i32, i32* @MACREG_REG_GEN_PTR, align 4
  %295 = load i32, i32* %12, align 4
  %296 = call i32 @WR4(%struct.mwl_hal_priv* %293, i32 %294, i32 %295)
  %297 = load i32, i32* @FW_CHECK_USECS, align 4
  %298 = call i32 @DELAY(i32 %297)
  %299 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %300 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %301 = call i32 @RD4(%struct.mwl_hal_priv* %299, i32 %300)
  %302 = load i32, i32* %11, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %292
  %305 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %306 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %307 = call i32 @WR4(%struct.mwl_hal_priv* %305, i32 %306, i32 0)
  %308 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %309 = call i32 @mwlResetHalState(%struct.mwl_hal_priv* %308)
  store i32 %309, i32* %3, align 4
  br label %331

310:                                              ; preds = %292
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %19, align 4
  br label %288

314:                                              ; preds = %288
  %315 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %315, i32* %3, align 4
  br label %331

316:                                              ; preds = %258, %224, %194, %179, %140
  %317 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %318 = call i32 @mwlFwReset(%struct.mwl_hal_priv* %317)
  br label %319

319:                                              ; preds = %316, %78, %46
  %320 = load %struct.firmware*, %struct.firmware** %9, align 8
  %321 = icmp ne %struct.firmware* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load %struct.firmware*, %struct.firmware** %9, align 8
  %324 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %325 = call i32 @firmware_put(%struct.firmware* %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %319
  %327 = load %struct.firmware*, %struct.firmware** %10, align 8
  %328 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %329 = call i32 @firmware_put(%struct.firmware* %327, i32 %328)
  %330 = load i32, i32* %20, align 4
  store i32 %330, i32* %3, align 4
  br label %331

331:                                              ; preds = %326, %314, %304, %30
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @mwlFwReset(%struct.mwl_hal_priv*) #1

declare dso_local i32 @WR4(%struct.mwl_hal_priv*, i32, i32) #1

declare dso_local i32 @mwlPokeSdramController(%struct.mwl_hal_priv*, i64) #1

declare dso_local i32 @mwlSendBlock(%struct.mwl_hal_priv*, i32, i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @RD4(%struct.mwl_hal_priv*, i32) #1

declare dso_local i32 @mwlSendBlock2(%struct.mwl_hal_priv*, i32*, i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

declare dso_local i32 @mwlTriggerPciCmd(%struct.mwl_hal_priv*) #1

declare dso_local i32 @mwlResetHalState(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
