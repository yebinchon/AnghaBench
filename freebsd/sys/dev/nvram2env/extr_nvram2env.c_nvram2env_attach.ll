; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvram2env/extr_nvram2env.c_nvram2env_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvram2env/extr_nvram2env.c_nvram2env_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram2env_softc = type { i64, i64, i64, i64, i32, i32 }
%struct.nvram = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@NVRAM_MAX_SIZE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c" size=0x%05x maxsize=0x%05x\0A\00", align 1
@NVRAM_FLAGS_UBOOT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVRAM_FLAGS_BROADCOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sig = %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"size = %#x\0A\00", align 1
@NVRAM_FLAGS_NOCHECK = common dso_local global i32 0, align 4
@NVRAM_FLAGS_GENERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ENV[%p]: %s=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"WAN_MAC_ADDR\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ENV: aliasing WAN_MAC_ADDR to ethaddr = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ethaddr\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"LAN_MAC_ADDR\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"ENV: aliasing LAN_MAC_ADDR to eth1addr = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"eth1addr\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"bootverbose\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"boothowto\00", align 1
@boothowto = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvram2env_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvram2env_softc*, align 8
  %5 = alloca %struct.nvram*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.nvram2env_softc* @device_get_softc(i32 %13)
  store %struct.nvram2env_softc* %14, %struct.nvram2env_softc** %4, align 8
  %15 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %16 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %21 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %1
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %279

26:                                               ; preds = %19
  %27 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %28 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %31 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @NVRAM_MAX_SIZE, align 4
  %34 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %35 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %34, i32 0, i32 5
  %36 = call i64 @bus_space_map(i64 %29, i64 %32, i32 %33, i32 0, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %279

40:                                               ; preds = %26
  %41 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %42 = call i64 @read_4(%struct.nvram2env_softc* %41, i64 0)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %44 = call i64 @read_4(%struct.nvram2env_softc* %43, i64 4)
  store i64 %44, i64* %10, align 8
  %45 = load i8*, i8** @bootverbose, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %51 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %57 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %62 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  br label %66

64:                                               ; preds = %54
  %65 = load i64, i64* %10, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %70 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %75 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NVRAM_FLAGS_UBOOT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %270

80:                                               ; preds = %73, %66
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, 3
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = and i64 %83, -4
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* @M_DEVBUF, align 4
  %87 = load i32, i32* @M_WAITOK, align 4
  %88 = load i32, i32* @M_ZERO, align 4
  %89 = or i32 %87, %88
  %90 = call %struct.nvram* @malloc(i64 %85, i32 %86, i32 %89)
  store %struct.nvram* %90, %struct.nvram** %5, align 8
  %91 = load %struct.nvram*, %struct.nvram** %5, align 8
  %92 = icmp ne %struct.nvram* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @ENOMEM, align 4
  store i32 %94, i32* %2, align 4
  br label %279

95:                                               ; preds = %80
  %96 = load %struct.nvram*, %struct.nvram** %5, align 8
  %97 = bitcast %struct.nvram* %96 to i64*
  store i64* %97, i64** %12, align 8
  store i64 0, i64* %11, align 8
  br label %98

98:                                               ; preds = %109, %95
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i64 @read_4(%struct.nvram2env_softc* %103, i64 %104)
  %106 = load i64*, i64** %12, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %12, align 8
  br label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %110, 4
  store i64 %111, i64* %11, align 8
  br label %98

112:                                              ; preds = %98
  %113 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %114 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NVRAM_FLAGS_BROADCOM, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.nvram*, %struct.nvram** %5, align 8
  %122 = getelementptr inbounds %struct.nvram, %struct.nvram* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.nvram*, %struct.nvram** %5, align 8
  %128 = getelementptr inbounds %struct.nvram, %struct.nvram* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %119, %112
  %133 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %134 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @NVRAM_FLAGS_NOCHECK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %132
  %141 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %142 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @NVRAM_FLAGS_GENERIC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.nvram*, %struct.nvram** %5, align 8
  %149 = bitcast %struct.nvram* %148 to i8*
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  store i8* %150, i8** %6, align 8
  br label %151

151:                                              ; preds = %147, %140
  %152 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %153 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NVRAM_FLAGS_UBOOT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.nvram*, %struct.nvram** %5, align 8
  %160 = bitcast %struct.nvram* %159 to i8*
  %161 = getelementptr inbounds i8, i8* %160, i64 4
  store i8* %161, i8** %6, align 8
  br label %178

162:                                              ; preds = %151
  %163 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %164 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NVRAM_FLAGS_BROADCOM, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.nvram*, %struct.nvram** %5, align 8
  %171 = bitcast %struct.nvram* %170 to i8*
  %172 = getelementptr inbounds i8, i8* %171, i64 20
  store i8* %172, i8** %6, align 8
  br label %177

173:                                              ; preds = %162
  %174 = load %struct.nvram*, %struct.nvram** %5, align 8
  %175 = bitcast %struct.nvram* %174 to i8*
  %176 = getelementptr inbounds i8, i8* %175, i64 4
  store i8* %176, i8** %6, align 8
  br label %177

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177, %158
  br label %179

179:                                              ; preds = %257, %178
  %180 = load i8*, i8** %6, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = bitcast i64* %181 to i8*
  %183 = icmp ult i8* %180, %182
  br i1 %183, label %184, label %266

184:                                              ; preds = %179
  %185 = load i8*, i8** %6, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** %6, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187, %184
  br label %266

192:                                              ; preds = %187
  %193 = load i8*, i8** %6, align 8
  %194 = call i8* @strchr(i8* %193, i8 signext 61)
  store i8* %194, i8** %8, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 0
  store i8 0, i8* %196, align 1
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  store i8* %198, i8** %7, align 8
  %199 = load i8*, i8** @bootverbose, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %212

201:                                              ; preds = %192
  %202 = load i8*, i8** %6, align 8
  %203 = load %struct.nvram*, %struct.nvram** %5, align 8
  %204 = bitcast %struct.nvram* %203 to i8*
  %205 = ptrtoint i8* %202 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = inttoptr i64 %207 to i8*
  %209 = load i8*, i8** %6, align 8
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %208, i8* %209, i8* %210)
  br label %212

212:                                              ; preds = %201, %192
  %213 = load i8*, i8** %6, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @kern_setenv(i8* %213, i8* %214)
  %216 = load i8*, i8** %6, align 8
  %217 = call i64 @strcasecmp(i8* %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = load i8*, i8** @bootverbose, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i8*, i8** %7, align 8
  %227 = call i32 @kern_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %226)
  br label %242

228:                                              ; preds = %212
  %229 = load i8*, i8** %6, align 8
  %230 = call i64 @strcasecmp(i8* %229, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load i8*, i8** @bootverbose, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i8*, i8** %7, align 8
  %237 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @kern_setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %238, %228
  br label %242

242:                                              ; preds = %241, %225
  %243 = load i8*, i8** %6, align 8
  %244 = call i64 @strcmp(i8* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load i8*, i8** %7, align 8
  %248 = call i8* @strtoul(i8* %247, i32 0, i32 0)
  store i8* %248, i8** @bootverbose, align 8
  br label %249

249:                                              ; preds = %246, %242
  %250 = load i8*, i8** %6, align 8
  %251 = call i64 @strcmp(i8* %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i8*, i8** %7, align 8
  %255 = call i8* @strtoul(i8* %254, i32 0, i32 0)
  store i8* %255, i8** @boothowto, align 8
  br label %256

256:                                              ; preds = %253, %249
  br label %257

257:                                              ; preds = %256
  %258 = load i8*, i8** %6, align 8
  %259 = call i64 @strlen(i8* %258)
  %260 = load i8*, i8** %7, align 8
  %261 = call i64 @strlen(i8* %260)
  %262 = add nsw i64 %259, %261
  %263 = add nsw i64 %262, 2
  %264 = load i8*, i8** %6, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 %263
  store i8* %265, i8** %6, align 8
  br label %179

266:                                              ; preds = %191, %179
  %267 = load %struct.nvram*, %struct.nvram** %5, align 8
  %268 = load i32, i32* @M_DEVBUF, align 4
  %269 = call i32 @free(%struct.nvram* %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %73
  %271 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %272 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %4, align 8
  %275 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @NVRAM_MAX_SIZE, align 4
  %278 = call i32 @bus_space_unmap(i64 %273, i32 %276, i32 %277)
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %270, %93, %38, %24
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local %struct.nvram2env_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_space_map(i64, i64, i32, i32, i32*) #1

declare dso_local i64 @read_4(%struct.nvram2env_softc*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local %struct.nvram* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @kern_setenv(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtoul(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.nvram*, i32) #1

declare dso_local i32 @bus_space_unmap(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
