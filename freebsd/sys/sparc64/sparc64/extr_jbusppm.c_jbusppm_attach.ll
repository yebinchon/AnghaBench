; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_jbusppm.c_jbusppm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_jbusppm.c_jbusppm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbusppm_softc = type { i32**, i8**, i8** }

@JBUSPPM_DEVID = common dso_local global i32 0, align 4
@JBUSPPM_ESTAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not determine Estar resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not get children\0A\00", align 1
@OFW_TYPE_PCI = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"pci108e,a801\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"could not find Tomatillo\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"could not determine Tomatillo resource\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"could not allocate resource %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@JBUSPPM_DEVID_JID = common dso_local global i32 0, align 4
@JBUSPPM_DEVID_JID_MASTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"master I/O bridge\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"running at \00", align 1
@JBUSPPM_ESTAR_CTRL = common dso_local global i32 0, align 4
@JBUSPPM_ESTAR_CTRL_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1/32\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" speed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @jbusppm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbusppm_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.jbusppm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.jbusppm_softc* @device_get_softc(i32* %15)
  store %struct.jbusppm_softc* %16, %struct.jbusppm_softc** %4, align 8
  %17 = load i32, i32* @JBUSPPM_DEVID, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %225, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @JBUSPPM_ESTAR, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %228

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @JBUSPPM_ESTAR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %141

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @bus_get_resource(i32* %28, i32 %29, i32 %30, i64* %12, i64* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @device_printf(i32* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %262

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @device_get_parent(i32* %37)
  %39 = call i64 @device_get_children(i32 %38, i32*** %7, i32* %14)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @device_printf(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %262

44:                                               ; preds = %36
  store i32* null, i32** %8, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %102, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %105

49:                                               ; preds = %45
  %50 = load i32**, i32*** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @ofw_bus_get_type(i32* %54)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %101

57:                                               ; preds = %49
  %58 = load i32**, i32*** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32* @ofw_bus_get_type(i32* %62)
  %64 = load i8*, i8** @OFW_TYPE_PCI, align 8
  %65 = call i64 @strcmp(i32* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %57
  %68 = load i32**, i32*** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @ofw_bus_get_compat(i32* %72)
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %67
  %76 = load i32**, i32*** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i32* @ofw_bus_get_compat(i32* %80)
  %82 = call i64 @strcmp(i32* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %75
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = call i32 @bus_get_resource_start(i32* %89, i32 %90, i32 0)
  %92 = ashr i32 %91, 20
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32**, i32*** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %8, align 8
  br label %105

101:                                              ; preds = %84, %75, %67, %57, %49
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %45

105:                                              ; preds = %95, %45
  %106 = load i32**, i32*** %7, align 8
  %107 = load i32, i32* @M_TEMP, align 4
  %108 = call i32 @free(i32** %106, i32 %107)
  %109 = load i32*, i32** %8, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32*, i8*, ...) @device_printf(i32* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %262

114:                                              ; preds = %105
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @SYS_RES_MEMORY, align 4
  %117 = call i64 @bus_get_resource(i32* %115, i32 %116, i32 1, i64* %10, i64* %9)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 (i32*, i8*, ...) @device_printf(i32* %120, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %262

122:                                              ; preds = %114
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* @SYS_RES_MEMORY, align 4
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %9, align 8
  %128 = add nsw i64 %126, %127
  %129 = sub nsw i64 %128, 1
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* @RF_SHAREABLE, align 4
  %132 = load i32, i32* @RF_ACTIVE, align 4
  %133 = or i32 %131, %132
  %134 = call i32* @bus_alloc_resource(i32* %123, i32 %124, i32* %6, i64 %125, i64 %129, i64 %130, i32 %133)
  %135 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %136 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  store i32* %134, i32** %140, align 8
  br label %153

141:                                              ; preds = %22
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* @SYS_RES_MEMORY, align 4
  %144 = load i32, i32* @RF_ACTIVE, align 4
  %145 = call i8* @bus_alloc_resource_any(i32* %142, i32 %143, i32* %6, i32 %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %148 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %147, i32 0, i32 0
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  store i32* %146, i32** %152, align 8
  br label %153

153:                                              ; preds = %141, %122
  %154 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %155 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load i32*, i32** %3, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 (i32*, i8*, ...) @device_printf(i32* %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %262

166:                                              ; preds = %153
  %167 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %168 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %167, i32 0, i32 0
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = call i8* @rman_get_bustag(i32* %173)
  %175 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %176 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %175, i32 0, i32 2
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* %174, i8** %180, align 8
  %181 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %182 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %181, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = call i8* @rman_get_bushandle(i32* %187)
  %189 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %190 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %189, i32 0, i32 1
  %191 = load i8**, i8*** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  store i8* %188, i8** %194, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @JBUSPPM_ESTAR, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %224

198:                                              ; preds = %166
  %199 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %200 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %199, i32 0, i32 2
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %207 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %206, i32 0, i32 1
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %10, align 8
  %215 = sub nsw i64 %213, %214
  %216 = load i64, i64* %11, align 8
  %217 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %218 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %217, i32 0, i32 1
  %219 = load i8**, i8*** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = call i32 @bus_space_subregion(i8* %205, i8* %212, i64 %215, i64 %216, i8** %222)
  br label %224

224:                                              ; preds = %198, %166
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %18

228:                                              ; preds = %18
  %229 = load i64, i64* @bootverbose, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %261

231:                                              ; preds = %228
  %232 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %233 = load i32, i32* @JBUSPPM_DEVID, align 4
  %234 = load i32, i32* @JBUSPPM_DEVID_JID, align 4
  %235 = call i32 @JBUSPPM_READ(%struct.jbusppm_softc* %232, i32 %233, i32 %234)
  %236 = load i32, i32* @JBUSPPM_DEVID_JID_MASTER, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 (i32*, i8*, ...) @device_printf(i32* %240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %231
  %243 = load i32*, i32** %3, align 8
  %244 = call i32 (i32*, i8*, ...) @device_printf(i32* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %245 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %246 = load i32, i32* @JBUSPPM_ESTAR, align 4
  %247 = load i32, i32* @JBUSPPM_ESTAR_CTRL, align 4
  %248 = call i32 @JBUSPPM_READ(%struct.jbusppm_softc* %245, i32 %246, i32 %247)
  %249 = load i32, i32* @JBUSPPM_ESTAR_CTRL_MASK, align 4
  %250 = and i32 %248, %249
  switch i32 %250, label %257 [
    i32 130, label %251
    i32 129, label %253
    i32 128, label %255
  ]

251:                                              ; preds = %242
  %252 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %259

253:                                              ; preds = %242
  %254 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %259

255:                                              ; preds = %242
  %256 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %259

257:                                              ; preds = %242
  %258 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %255, %253, %251
  %260 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %228
  store i32 0, i32* %2, align 4
  br label %303

262:                                              ; preds = %162, %119, %111, %41, %33
  %263 = load i32, i32* @JBUSPPM_DEVID, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %298, %262
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* @JBUSPPM_ESTAR, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %270 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %269, i32 0, i32 0
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br label %277

277:                                              ; preds = %268, %264
  %278 = phi i1 [ false, %264 ], [ %276, %268 ]
  br i1 %278, label %279, label %301

279:                                              ; preds = %277
  %280 = load i32*, i32** %3, align 8
  %281 = load i32, i32* @SYS_RES_MEMORY, align 4
  %282 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %283 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %282, i32 0, i32 0
  %284 = load i32**, i32*** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %284, i64 %286
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @rman_get_rid(i32* %288)
  %290 = load %struct.jbusppm_softc*, %struct.jbusppm_softc** %4, align 8
  %291 = getelementptr inbounds %struct.jbusppm_softc, %struct.jbusppm_softc* %290, i32 0, i32 0
  %292 = load i32**, i32*** %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = call i32 @bus_release_resource(i32* %280, i32 %281, i32 %289, i32* %296)
  br label %298

298:                                              ; preds = %279
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %5, align 4
  br label %264

301:                                              ; preds = %277
  %302 = load i32, i32* @ENXIO, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %301, %261
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local %struct.jbusppm_softc* @device_get_softc(i32*) #1

declare dso_local i64 @bus_get_resource(i32*, i32, i32, i64*, i64*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i64 @device_get_children(i32, i32***, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32* @ofw_bus_get_type(i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @ofw_bus_get_compat(i32*) #1

declare dso_local i32 @bus_get_resource_start(i32*, i32, i32) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32* @bus_alloc_resource(i32*, i32, i32*, i64, i64, i64, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_space_subregion(i8*, i8*, i64, i64, i8**) #1

declare dso_local i32 @JBUSPPM_READ(%struct.jbusppm_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
