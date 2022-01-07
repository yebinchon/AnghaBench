; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_write_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.anon = type { i32* }

@CFI_INTEL_LBS = common dso_local global i32 0, align 4
@CFI_INTEL_UB = common dso_local global i32 0, align 4
@CFI_BCS_READ_ARRAY = common dso_local global i32 0, align 4
@CFI_BCS_BLOCK_ERASE = common dso_local global i32 0, align 4
@CFI_BCS_CONFIRM = common dso_local global i32 0, align 4
@AMD_ADDR_START = common dso_local global i32 0, align 4
@CFI_AMD_ERASE_SECTOR = common dso_local global i32 0, align 4
@CFI_AMD_BLOCK_ERASE = common dso_local global i32 0, align 4
@CFI_AMD_MAXCHK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0ACFI Sector Erase time out error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CFI_TIMEOUT_ERASE = common dso_local global i64 0, align 8
@CFI_BCS_BUF_PROG_SETUP = common dso_local global i32 0, align 4
@CFI_TIMEOUT_BUFWRITE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@CFI_INTEL_STATUS_WSMS = common dso_local global i64 0, align 8
@CFI_BCS_PROGRAM = common dso_local global i32 0, align 4
@CFI_AMD_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\0ACFI Program Verify time out error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CFI_TIMEOUT_WRITE = common dso_local global i64 0, align 8
@CFI_INTEL_LB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_write_block(%struct.cfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfi_softc*, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.cfi_softc* %0, %struct.cfi_softc** %3, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %38 [
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %1, %1
  %20 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %21 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CFI_INTEL_LBS, align 4
  %25 = call i32 @cfi_write(%struct.cfi_softc* %20, i32 %23, i32 %24)
  %26 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %27 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CFI_INTEL_UB, align 4
  %31 = call i32 @cfi_write(%struct.cfi_softc* %26, i32 %29, i32 %30)
  %32 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %33 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CFI_BCS_READ_ARRAY, align 4
  %37 = call i32 @cfi_write(%struct.cfi_softc* %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %1, %19
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %52, %59
  %61 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %60, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %74

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %39

74:                                               ; preds = %69, %39
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %200

77:                                               ; preds = %74
  %78 = call i32 (...) @intr_disable()
  store i32 %78, i32* %6, align 4
  %79 = call i64 (...) @sbinuptime()
  store i64 %79, i64* %13, align 8
  %80 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %81 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %182 [
    i32 129, label %83
    i32 128, label %83
    i32 130, label %96
    i32 131, label %96
  ]

83:                                               ; preds = %77, %77
  %84 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %85 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %86 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CFI_BCS_BLOCK_ERASE, align 4
  %89 = call i32 @cfi_write(%struct.cfi_softc* %84, i32 %87, i32 %88)
  %90 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %91 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CFI_BCS_CONFIRM, align 4
  %95 = call i32 @cfi_write(%struct.cfi_softc* %90, i32 %93, i32 %94)
  br label %186

96:                                               ; preds = %77, %77
  %97 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %98 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %97, i32 0, i32 11
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %130, %96
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %106 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %103
  %110 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %111 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %110, i32 0, i32 11
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %109
  %121 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %122 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %121, i32 0, i32 11
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %120, %109
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %103

133:                                              ; preds = %103
  %134 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %135 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %136 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AMD_ADDR_START, align 4
  %139 = load i32, i32* @CFI_AMD_ERASE_SECTOR, align 4
  %140 = call i32 @cfi_amd_write(%struct.cfi_softc* %134, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %142 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %143 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %146 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @ffs(i32 %148)
  %150 = sub nsw i32 %149, 1
  %151 = ashr i32 %147, %150
  %152 = load i32, i32* @CFI_AMD_BLOCK_ERASE, align 4
  %153 = call i32 @cfi_amd_write(%struct.cfi_softc* %141, i32 %144, i32 %151, i32 %152)
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %171, %133
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @CFI_AMD_MAXCHK, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %154
  %159 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %160 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %161 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %164 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @cfi_check_erase(%struct.cfi_softc* %159, i32 %162, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %174

169:                                              ; preds = %158
  %170 = call i32 @DELAY(i32 10)
  br label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %154

174:                                              ; preds = %168, %154
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @CFI_AMD_MAXCHK, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %180 = load i32, i32* @ENODEV, align 4
  store i32 %180, i32* %2, align 4
  br label %650

181:                                              ; preds = %174
  br label %186

182:                                              ; preds = %77
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @intr_restore(i32 %183)
  %185 = load i32, i32* @ENODEV, align 4
  store i32 %185, i32* %2, align 4
  br label %650

186:                                              ; preds = %181, %83
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @intr_restore(i32 %187)
  %189 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %190 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %191 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* %13, align 8
  %194 = load i64, i64* @CFI_TIMEOUT_ERASE, align 8
  %195 = call i32 @cfi_wait_ready(%struct.cfi_softc* %189, i32 %192, i64 %193, i64 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %623

199:                                              ; preds = %186
  br label %201

200:                                              ; preds = %74
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %199
  %202 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %203 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = bitcast %union.anon* %4 to i32**
  store i32* %204, i32** %205, align 8
  %206 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %207 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = bitcast %union.anon* %5 to i32**
  store i32* %208, i32** %209, align 8
  %210 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %211 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %214 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %384

217:                                              ; preds = %201
  %218 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %219 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  switch i32 %220, label %382 [
    i32 129, label %221
    i32 128, label %221
  ]

221:                                              ; preds = %217, %217
  store i32 0, i32* %8, align 4
  br label %222

222:                                              ; preds = %377, %221
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %225 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %381

228:                                              ; preds = %222
  %229 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %230 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %233 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sub nsw i32 %234, %235
  %237 = call i32 @MIN(i32 %231, i32 %236)
  store i32 %237, i32* %12, align 4
  %238 = call i32 (...) @intr_disable()
  store i32 %238, i32* %6, align 4
  %239 = call i64 (...) @sbinuptime()
  store i64 %239, i64* %13, align 8
  br label %240

240:                                              ; preds = %269, %228
  %241 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %242 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %243 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %244, %245
  %247 = load i32, i32* @CFI_BCS_BUF_PROG_SETUP, align 4
  %248 = call i32 @cfi_write(%struct.cfi_softc* %241, i32 %246, i32 %247)
  %249 = call i64 (...) @sbinuptime()
  %250 = load i64, i64* %13, align 8
  %251 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %252 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %251, i32 0, i32 10
  %253 = load i64*, i64** %252, align 8
  %254 = load i64, i64* @CFI_TIMEOUT_BUFWRITE, align 8
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %250, %256
  %258 = icmp sgt i64 %249, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %240
  %260 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %260, i32* %7, align 4
  br label %623

261:                                              ; preds = %240
  %262 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %263 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %264 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %265, %266
  %268 = call i64 @cfi_read(%struct.cfi_softc* %262, i32 %267)
  store i64 %268, i64* %11, align 8
  br label %269

269:                                              ; preds = %261
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @CFI_INTEL_STATUS_WSMS, align 8
  %272 = and i64 %270, %271
  %273 = icmp ne i64 %272, 0
  %274 = xor i1 %273, true
  br i1 %274, label %240, label %275

275:                                              ; preds = %269
  %276 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %277 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %278 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %279, %280
  %282 = load i32, i32* %12, align 4
  %283 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %284 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 8
  %286 = sdiv i32 %282, %285
  %287 = sub nsw i32 %286, 1
  %288 = call i32 @cfi_write(%struct.cfi_softc* %276, i32 %281, i32 %287)
  %289 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %290 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 8
  switch i32 %291, label %353 [
    i32 1, label %292
    i32 2, label %311
    i32 4, label %332
  ]

292:                                              ; preds = %275
  %293 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %294 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %293, i32 0, i32 9
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %297 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %300 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %301, %302
  %304 = bitcast %union.anon* %4 to i32**
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %12, align 4
  %310 = call i32 @bus_space_write_region_1(i32 %295, i32 %298, i32 %303, i32* %308, i32 %309)
  br label %353

311:                                              ; preds = %275
  %312 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %313 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %316 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %319 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %320, %321
  %323 = bitcast %union.anon* %4 to i64**
  %324 = load i64*, i64** %323, align 8
  %325 = load i32, i32* %8, align 4
  %326 = sdiv i32 %325, 2
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %324, i64 %327
  %329 = load i32, i32* %12, align 4
  %330 = sdiv i32 %329, 2
  %331 = call i32 @bus_space_write_region_2(i32 %314, i32 %317, i32 %322, i64* %328, i32 %330)
  br label %353

332:                                              ; preds = %275
  %333 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %334 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %337 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %340 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %8, align 4
  %343 = add nsw i32 %341, %342
  %344 = bitcast %union.anon* %4 to i64**
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sdiv i32 %346, 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %345, i64 %348
  %350 = load i32, i32* %12, align 4
  %351 = sdiv i32 %350, 4
  %352 = call i32 @bus_space_write_region_4(i32 %335, i32 %338, i32 %343, i64* %349, i32 %351)
  br label %353

353:                                              ; preds = %275, %332, %311, %292
  %354 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %355 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %356 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %357, %358
  %360 = load i32, i32* @CFI_BCS_CONFIRM, align 4
  %361 = call i32 @cfi_write(%struct.cfi_softc* %354, i32 %359, i32 %360)
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @intr_restore(i32 %362)
  %364 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %365 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %366 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %8, align 4
  %369 = add nsw i32 %367, %368
  %370 = load i64, i64* %13, align 8
  %371 = load i64, i64* @CFI_TIMEOUT_BUFWRITE, align 8
  %372 = call i32 @cfi_wait_ready(%struct.cfi_softc* %364, i32 %369, i64 %370, i64 %371)
  store i32 %372, i32* %7, align 4
  %373 = load i32, i32* %7, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %353
  br label %623

376:                                              ; preds = %353
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %8, align 4
  br label %222

381:                                              ; preds = %222
  br label %623

382:                                              ; preds = %217
  br label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383, %201
  store i32 0, i32* %8, align 4
  br label %385

385:                                              ; preds = %616, %384
  %386 = load i32, i32* %8, align 4
  %387 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %388 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = icmp slt i32 %386, %389
  br i1 %390, label %391, label %622

391:                                              ; preds = %385
  %392 = load i32, i32* %10, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %451, label %394

394:                                              ; preds = %391
  %395 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %396 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  switch i32 %397, label %450 [
    i32 1, label %398
    i32 2, label %414
    i32 4, label %432
  ]

398:                                              ; preds = %394
  %399 = bitcast %union.anon* %4 to i32**
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %8, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = bitcast %union.anon* %5 to i32**
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %404, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %398
  br label %616

413:                                              ; preds = %398
  br label %450

414:                                              ; preds = %394
  %415 = bitcast %union.anon* %4 to i64**
  %416 = load i64*, i64** %415, align 8
  %417 = load i32, i32* %8, align 4
  %418 = sdiv i32 %417, 2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %416, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = bitcast %union.anon* %5 to i64**
  %423 = load i64*, i64** %422, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sdiv i32 %424, 2
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i64, i64* %423, i64 %426
  %428 = load i64, i64* %427, align 8
  %429 = icmp eq i64 %421, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %414
  br label %616

431:                                              ; preds = %414
  br label %450

432:                                              ; preds = %394
  %433 = bitcast %union.anon* %4 to i64**
  %434 = load i64*, i64** %433, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sdiv i32 %435, 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i64, i64* %434, i64 %437
  %439 = load i64, i64* %438, align 8
  %440 = bitcast %union.anon* %5 to i64**
  %441 = load i64*, i64** %440, align 8
  %442 = load i32, i32* %8, align 4
  %443 = sdiv i32 %442, 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i64, i64* %441, i64 %444
  %446 = load i64, i64* %445, align 8
  %447 = icmp eq i64 %439, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %432
  br label %616

449:                                              ; preds = %432
  br label %450

450:                                              ; preds = %394, %449, %431, %413
  br label %451

451:                                              ; preds = %450, %391
  %452 = call i32 (...) @intr_disable()
  store i32 %452, i32* %6, align 4
  %453 = call i64 (...) @sbinuptime()
  store i64 %453, i64* %13, align 8
  %454 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %455 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  switch i32 %456, label %471 [
    i32 129, label %457
    i32 128, label %457
    i32 130, label %466
    i32 131, label %466
  ]

457:                                              ; preds = %451, %451
  %458 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %459 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %460 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* %8, align 4
  %463 = add nsw i32 %461, %462
  %464 = load i32, i32* @CFI_BCS_PROGRAM, align 4
  %465 = call i32 @cfi_write(%struct.cfi_softc* %458, i32 %463, i32 %464)
  br label %471

466:                                              ; preds = %451, %451
  %467 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %468 = load i32, i32* @AMD_ADDR_START, align 4
  %469 = load i32, i32* @CFI_AMD_PROGRAM, align 4
  %470 = call i32 @cfi_amd_write(%struct.cfi_softc* %467, i32 0, i32 %468, i32 %469)
  br label %471

471:                                              ; preds = %451, %466, %457
  %472 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %473 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %472, i32 0, i32 7
  %474 = load i32, i32* %473, align 8
  switch i32 %474, label %534 [
    i32 1, label %475
    i32 2, label %494
    i32 4, label %514
  ]

475:                                              ; preds = %471
  %476 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %477 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %476, i32 0, i32 9
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %480 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %479, i32 0, i32 8
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %483 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* %8, align 4
  %486 = add nsw i32 %484, %485
  %487 = bitcast %union.anon* %4 to i32**
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %8, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @bus_space_write_1(i32 %478, i32 %481, i32 %486, i32 %492)
  br label %534

494:                                              ; preds = %471
  %495 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %496 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %495, i32 0, i32 9
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %499 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %498, i32 0, i32 8
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %502 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* %8, align 4
  %505 = add nsw i32 %503, %504
  %506 = bitcast %union.anon* %4 to i64**
  %507 = load i64*, i64** %506, align 8
  %508 = load i32, i32* %8, align 4
  %509 = sdiv i32 %508, 2
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i64, i64* %507, i64 %510
  %512 = load i64, i64* %511, align 8
  %513 = call i32 @bus_space_write_2(i32 %497, i32 %500, i32 %505, i64 %512)
  br label %534

514:                                              ; preds = %471
  %515 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %516 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %515, i32 0, i32 9
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %519 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %518, i32 0, i32 8
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %522 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* %8, align 4
  %525 = add nsw i32 %523, %524
  %526 = bitcast %union.anon* %4 to i64**
  %527 = load i64*, i64** %526, align 8
  %528 = load i32, i32* %8, align 4
  %529 = sdiv i32 %528, 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i64, i64* %527, i64 %530
  %532 = load i64, i64* %531, align 8
  %533 = call i32 @bus_space_write_4(i32 %517, i32 %520, i32 %525, i64 %532)
  br label %534

534:                                              ; preds = %471, %514, %494, %475
  %535 = load i32, i32* %6, align 4
  %536 = call i32 @intr_restore(i32 %535)
  %537 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %538 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = icmp eq i32 %539, 131
  br i1 %540, label %546, label %541

541:                                              ; preds = %534
  %542 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %543 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = icmp eq i32 %544, 130
  br i1 %545, label %546, label %603

546:                                              ; preds = %541, %534
  store i32 0, i32* %9, align 4
  br label %547

547:                                              ; preds = %592, %546
  %548 = load i32, i32* %9, align 4
  %549 = load i32, i32* @CFI_AMD_MAXCHK, align 4
  %550 = icmp slt i32 %548, %549
  br i1 %550, label %551, label %595

551:                                              ; preds = %547
  %552 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %553 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %552, i32 0, i32 7
  %554 = load i32, i32* %553, align 8
  switch i32 %554, label %579 [
    i32 1, label %555
    i32 2, label %563
    i32 4, label %571
  ]

555:                                              ; preds = %551
  %556 = bitcast %union.anon* %4 to i32**
  %557 = load i32*, i32** %556, align 8
  %558 = load i32, i32* %8, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, i32* %557, i64 %559
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  store i64 %562, i64* %15, align 8
  br label %579

563:                                              ; preds = %551
  %564 = bitcast %union.anon* %4 to i64**
  %565 = load i64*, i64** %564, align 8
  %566 = load i32, i32* %8, align 4
  %567 = sdiv i32 %566, 2
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i64, i64* %565, i64 %568
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %15, align 8
  br label %579

571:                                              ; preds = %551
  %572 = bitcast %union.anon* %4 to i64**
  %573 = load i64*, i64** %572, align 8
  %574 = load i32, i32* %8, align 4
  %575 = sdiv i32 %574, 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i64, i64* %573, i64 %576
  %578 = load i64, i64* %577, align 8
  store i64 %578, i64* %15, align 8
  br label %579

579:                                              ; preds = %551, %571, %563, %555
  %580 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %581 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %582 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = load i32, i32* %8, align 4
  %585 = add nsw i32 %583, %584
  %586 = call i64 @cfi_read(%struct.cfi_softc* %580, i32 %585)
  %587 = load i64, i64* %15, align 8
  %588 = icmp eq i64 %586, %587
  br i1 %588, label %589, label %590

589:                                              ; preds = %579
  br label %595

590:                                              ; preds = %579
  %591 = call i32 @DELAY(i32 10)
  br label %592

592:                                              ; preds = %590
  %593 = load i32, i32* %9, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %9, align 4
  br label %547

595:                                              ; preds = %589, %547
  %596 = load i32, i32* %9, align 4
  %597 = load i32, i32* @CFI_AMD_MAXCHK, align 4
  %598 = icmp eq i32 %596, %597
  br i1 %598, label %599, label %602

599:                                              ; preds = %595
  %600 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %601 = load i32, i32* @ENXIO, align 4
  store i32 %601, i32* %7, align 4
  br label %623

602:                                              ; preds = %595
  br label %615

603:                                              ; preds = %541
  %604 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %605 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %606 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = load i64, i64* %13, align 8
  %609 = load i64, i64* @CFI_TIMEOUT_WRITE, align 8
  %610 = call i32 @cfi_wait_ready(%struct.cfi_softc* %604, i32 %607, i64 %608, i64 %609)
  store i32 %610, i32* %7, align 4
  %611 = load i32, i32* %7, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %603
  br label %623

614:                                              ; preds = %603
  br label %615

615:                                              ; preds = %614, %602
  br label %616

616:                                              ; preds = %615, %448, %430, %412
  %617 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %618 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %617, i32 0, i32 7
  %619 = load i32, i32* %618, align 8
  %620 = load i32, i32* %8, align 4
  %621 = add nsw i32 %620, %619
  store i32 %621, i32* %8, align 4
  br label %385

622:                                              ; preds = %385
  br label %623

623:                                              ; preds = %622, %613, %599, %381, %375, %259, %198
  %624 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %625 = call i32 @cfi_reset_default(%struct.cfi_softc* %624)
  %626 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %627 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  switch i32 %628, label %648 [
    i32 129, label %629
    i32 128, label %629
  ]

629:                                              ; preds = %623, %623
  %630 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %631 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %632 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @CFI_INTEL_LBS, align 4
  %635 = call i32 @cfi_write(%struct.cfi_softc* %630, i32 %633, i32 %634)
  %636 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %637 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %638 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* @CFI_INTEL_LB, align 4
  %641 = call i32 @cfi_write(%struct.cfi_softc* %636, i32 %639, i32 %640)
  %642 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %643 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %644 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @CFI_BCS_READ_ARRAY, align 4
  %647 = call i32 @cfi_write(%struct.cfi_softc* %642, i32 %645, i32 %646)
  br label %648

648:                                              ; preds = %623, %629
  %649 = load i32, i32* %7, align 4
  store i32 %649, i32* %2, align 4
  br label %650

650:                                              ; preds = %648, %182, %178
  %651 = load i32, i32* %2, align 4
  ret i32 %651
}

declare dso_local i32 @cfi_write(%struct.cfi_softc*, i32, i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @sbinuptime(...) #1

declare dso_local i32 @cfi_amd_write(%struct.cfi_softc*, i32, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @cfi_check_erase(%struct.cfi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @cfi_wait_ready(%struct.cfi_softc*, i32, i64, i64) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @cfi_read(%struct.cfi_softc*, i32) #1

declare dso_local i32 @bus_space_write_region_1(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_space_write_region_2(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i32, i64) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i64) #1

declare dso_local i32 @cfi_reset_default(%struct.cfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
