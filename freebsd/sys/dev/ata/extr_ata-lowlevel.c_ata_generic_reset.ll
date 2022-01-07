; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_generic_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_generic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32 }

@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_MASTER = common dso_local global i32 0, align 4
@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_KNOWN_PRESENCE = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SLAVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"reset tp1 mask=%02x ostat0=%02x ostat1=%02x\0A\00", align 1
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_A_IDS = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@ATA_ERROR = common dso_local global i32 0, align 4
@ATA_STATUS_IS_LONG = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"stat0=0x%02x err=0x%02x lsb=0x%02x msb=0x%02x\0A\00", align 1
@ATA_E_ILI = common dso_local global i32 0, align 4
@ATAPI_MAGIC_LSB = common dso_local global i32 0, align 4
@ATAPI_MAGIC_MSB = common dso_local global i32 0, align 4
@ATA_ATAPI_MASTER = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_ATA_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"stat1=0x%02x err=0x%02x lsb=0x%02x msb=0x%02x\0A\00", align 1
@ATA_ATAPI_SLAVE = common dso_local global i32 0, align 4
@ATA_ATA_SLAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"reset tp2 stat0=%02x stat1=%02x devices=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_generic_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.ata_channel* @device_get_softc(i32 %13)
  store %struct.ata_channel* %14, %struct.ata_channel** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %16 = load i32, i32* @ATA_DRIVE, align 4
  %17 = load i32, i32* @ATA_D_IBM, align 4
  %18 = load i32, i32* @ATA_D_LBA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ATA_MASTER, align 4
  %21 = call i32 @ATA_DEV(i32 %20)
  %22 = or i32 %19, %21
  %23 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %15, i32 %16, i32 %22)
  %24 = call i32 @DELAY(i32 10)
  %25 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %26 = load i32, i32* @ATA_STATUS, align 4
  %27 = call i32 @ATA_IDX_INB(%struct.ata_channel* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 248
  %30 = icmp ne i32 %29, 248
  br i1 %30, label %38, label %31

31:                                               ; preds = %1
  %32 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATA_KNOWN_PRESENCE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31, %1
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 165
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @ATA_S_BUSY, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %38, %31
  %46 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %47 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_NO_SLAVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %45
  %53 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %54 = load i32, i32* @ATA_DRIVE, align 4
  %55 = load i32, i32* @ATA_D_IBM, align 4
  %56 = load i32, i32* @ATA_D_LBA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ATA_SLAVE, align 4
  %59 = call i32 @ATA_DEV(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %53, i32 %54, i32 %60)
  %62 = call i32 @DELAY(i32 10)
  %63 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %64 = load i32, i32* @ATA_STATUS, align 4
  %65 = call i32 @ATA_IDX_INB(%struct.ata_channel* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 248
  %68 = icmp ne i32 %67, 248
  br i1 %68, label %76, label %69

69:                                               ; preds = %52
  %70 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %71 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATA_KNOWN_PRESENCE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69, %52
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 165
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @ATA_S_BUSY, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, 2
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %76, %69
  br label %84

84:                                               ; preds = %83, %45
  %85 = load i64, i64* @bootverbose, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %84
  %94 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %95 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %483

99:                                               ; preds = %93
  %100 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %101 = load i32, i32* @ATA_DRIVE, align 4
  %102 = load i32, i32* @ATA_D_IBM, align 4
  %103 = load i32, i32* @ATA_D_LBA, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @ATA_MASTER, align 4
  %106 = call i32 @ATA_DEV(i32 %105)
  %107 = or i32 %104, %106
  %108 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %100, i32 %101, i32 %107)
  %109 = call i32 @DELAY(i32 10)
  %110 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %111 = load i32, i32* @ATA_CONTROL, align 4
  %112 = load i32, i32* @ATA_A_IDS, align 4
  %113 = load i32, i32* @ATA_A_RESET, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %110, i32 %111, i32 %114)
  %116 = call i32 @ata_udelay(i32 10000)
  %117 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %118 = load i32, i32* @ATA_CONTROL, align 4
  %119 = load i32, i32* @ATA_A_IDS, align 4
  %120 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %117, i32 %118, i32 %119)
  %121 = call i32 @ata_udelay(i32 100000)
  %122 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %123 = load i32, i32* @ATA_ERROR, align 4
  %124 = call i32 @ATA_IDX_INB(%struct.ata_channel* %122, i32 %123)
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %469, %99
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 310
  br i1 %127, label %128, label %472

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %266

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @ATA_S_BUSY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %266

137:                                              ; preds = %132
  %138 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %139 = load i32, i32* @ATA_DRIVE, align 4
  %140 = load i32, i32* @ATA_D_IBM, align 4
  %141 = load i32, i32* @ATA_MASTER, align 4
  %142 = call i32 @ATA_DEV(i32 %141)
  %143 = or i32 %140, %142
  %144 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %138, i32 %139, i32 %143)
  %145 = call i32 @DELAY(i32 10)
  %146 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %147 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ATA_STATUS_IS_LONG, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %137
  %153 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %154 = load i32, i32* @ATA_STATUS, align 4
  %155 = call i32 @ATA_IDX_INL(%struct.ata_channel* %153, i32 %154)
  %156 = and i32 %155, 255
  store i32 %156, i32* %5, align 4
  br label %161

157:                                              ; preds = %137
  %158 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %159 = load i32, i32* @ATA_STATUS, align 4
  %160 = call i32 @ATA_IDX_INB(%struct.ata_channel* %158, i32 %159)
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %152
  %162 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %163 = load i32, i32* @ATA_ERROR, align 4
  %164 = call i32 @ATA_IDX_INB(%struct.ata_channel* %162, i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %166 = load i32, i32* @ATA_CYL_LSB, align 4
  %167 = call i32 @ATA_IDX_INB(%struct.ata_channel* %165, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %169 = load i32, i32* @ATA_CYL_MSB, align 4
  %170 = call i32 @ATA_IDX_INB(%struct.ata_channel* %168, i32 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i64, i64* @bootverbose, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %161
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %161
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %204

184:                                              ; preds = %180
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %184
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @ATA_S_BUSY, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 100, i32 10
  %200 = icmp sgt i32 %193, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  %202 = load i32, i32* %11, align 4
  %203 = and i32 %202, -2
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %201, %192, %188, %184, %180
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @ATA_S_BUSY, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %265, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %8, align 4
  %211 = and i32 %210, 127
  %212 = load i32, i32* @ATA_E_ILI, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %247

214:                                              ; preds = %209
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @ATAPI_MAGIC_LSB, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @ATAPI_MAGIC_MSB, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load i32, i32* @ATA_ATAPI_MASTER, align 4
  %224 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %225 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %246

228:                                              ; preds = %218, %214
  %229 = load i32, i32* %9, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %228
  %232 = load i32, i32* %10, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @ATA_S_READY, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i32, i32* @ATA_ATA_MASTER, align 4
  %241 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %242 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %239, %234, %231, %228
  br label %246

246:                                              ; preds = %245, %222
  br label %264

247:                                              ; preds = %209
  %248 = load i32, i32* %5, align 4
  %249 = and i32 %248, 15
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %247
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %9, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load i32, i32* @ATA_S_BUSY, align 4
  %261 = load i32, i32* %5, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %259, %255, %251, %247
  br label %264

264:                                              ; preds = %263, %246
  br label %265

265:                                              ; preds = %264, %204
  br label %266

266:                                              ; preds = %265, %132, %128
  %267 = load i32, i32* %11, align 4
  %268 = and i32 %267, 2
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %413

270:                                              ; preds = %266
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* @ATA_S_BUSY, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %413

275:                                              ; preds = %270
  %276 = load i32, i32* %11, align 4
  %277 = and i32 %276, 1
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @ATA_S_BUSY, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %413, label %284

284:                                              ; preds = %279, %275
  %285 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %286 = load i32, i32* @ATA_DRIVE, align 4
  %287 = load i32, i32* @ATA_D_IBM, align 4
  %288 = load i32, i32* @ATA_SLAVE, align 4
  %289 = call i32 @ATA_DEV(i32 %288)
  %290 = or i32 %287, %289
  %291 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %285, i32 %286, i32 %290)
  %292 = call i32 @DELAY(i32 10)
  %293 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %294 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @ATA_STATUS_IS_LONG, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %284
  %300 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %301 = load i32, i32* @ATA_STATUS, align 4
  %302 = call i32 @ATA_IDX_INL(%struct.ata_channel* %300, i32 %301)
  %303 = and i32 %302, 255
  store i32 %303, i32* %7, align 4
  br label %308

304:                                              ; preds = %284
  %305 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %306 = load i32, i32* @ATA_STATUS, align 4
  %307 = call i32 @ATA_IDX_INB(%struct.ata_channel* %305, i32 %306)
  store i32 %307, i32* %7, align 4
  br label %308

308:                                              ; preds = %304, %299
  %309 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %310 = load i32, i32* @ATA_ERROR, align 4
  %311 = call i32 @ATA_IDX_INB(%struct.ata_channel* %309, i32 %310)
  store i32 %311, i32* %8, align 4
  %312 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %313 = load i32, i32* @ATA_CYL_LSB, align 4
  %314 = call i32 @ATA_IDX_INB(%struct.ata_channel* %312, i32 %313)
  store i32 %314, i32* %9, align 4
  %315 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %316 = load i32, i32* @ATA_CYL_MSB, align 4
  %317 = call i32 @ATA_IDX_INB(%struct.ata_channel* %315, i32 %316)
  store i32 %317, i32* %10, align 4
  %318 = load i64, i64* @bootverbose, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %308
  %321 = load i32, i32* %2, align 4
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %10, align 4
  %326 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %321, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %322, i32 %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %320, %308
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %8, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %351

331:                                              ; preds = %327
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %8, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %351

335:                                              ; preds = %331
  %336 = load i32, i32* %10, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %351

339:                                              ; preds = %335
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* @ATA_S_BUSY, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  %345 = zext i1 %344 to i64
  %346 = select i1 %344, i32 100, i32 10
  %347 = icmp sgt i32 %340, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %339
  %349 = load i32, i32* %11, align 4
  %350 = and i32 %349, -3
  store i32 %350, i32* %11, align 4
  br label %351

351:                                              ; preds = %348, %339, %335, %331, %327
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* @ATA_S_BUSY, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %412, label %356

356:                                              ; preds = %351
  %357 = load i32, i32* %8, align 4
  %358 = and i32 %357, 127
  %359 = load i32, i32* @ATA_E_ILI, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %394

361:                                              ; preds = %356
  %362 = load i32, i32* %9, align 4
  %363 = load i32, i32* @ATAPI_MAGIC_LSB, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %375

365:                                              ; preds = %361
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* @ATAPI_MAGIC_MSB, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %375

369:                                              ; preds = %365
  %370 = load i32, i32* @ATA_ATAPI_SLAVE, align 4
  %371 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %372 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 4
  br label %393

375:                                              ; preds = %365, %361
  %376 = load i32, i32* %9, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %375
  %379 = load i32, i32* %10, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %392

381:                                              ; preds = %378
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* @ATA_S_READY, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = load i32, i32* @ATA_ATA_SLAVE, align 4
  %388 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %389 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %386, %381, %378, %375
  br label %393

393:                                              ; preds = %392, %369
  br label %411

394:                                              ; preds = %356
  %395 = load i32, i32* %7, align 4
  %396 = and i32 %395, 15
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %410

398:                                              ; preds = %394
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* %9, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %410

402:                                              ; preds = %398
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* %10, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %402
  %407 = load i32, i32* @ATA_S_BUSY, align 4
  %408 = load i32, i32* %7, align 4
  %409 = or i32 %408, %407
  store i32 %409, i32* %7, align 4
  br label %410

410:                                              ; preds = %406, %402, %398, %394
  br label %411

411:                                              ; preds = %410, %393
  br label %412

412:                                              ; preds = %411, %351
  br label %413

413:                                              ; preds = %412, %279, %270, %266
  %414 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %415 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @ATA_KNOWN_PRESENCE, align 4
  %418 = and i32 %416, %417
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %448

420:                                              ; preds = %413
  %421 = load i32, i32* %12, align 4
  %422 = load i32, i32* %11, align 4
  %423 = icmp eq i32 %422, 3
  %424 = zext i1 %423 to i64
  %425 = select i1 %423, i32 20, i32 10
  %426 = icmp sgt i32 %421, %425
  br i1 %426, label %427, label %448

427:                                              ; preds = %420
  %428 = load i32, i32* %11, align 4
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %427
  %432 = load i32, i32* %5, align 4
  %433 = icmp eq i32 %432, 255
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load i32, i32* %11, align 4
  %436 = and i32 %435, -2
  store i32 %436, i32* %11, align 4
  br label %437

437:                                              ; preds = %434, %431, %427
  %438 = load i32, i32* %11, align 4
  %439 = and i32 %438, 2
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %447

441:                                              ; preds = %437
  %442 = load i32, i32* %7, align 4
  %443 = icmp eq i32 %442, 255
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = load i32, i32* %11, align 4
  %446 = and i32 %445, -3
  store i32 %446, i32* %11, align 4
  br label %447

447:                                              ; preds = %444, %441, %437
  br label %448

448:                                              ; preds = %447, %420, %413
  %449 = load i32, i32* %11, align 4
  %450 = and i32 %449, 1
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %448
  %453 = load i32, i32* %5, align 4
  %454 = load i32, i32* @ATA_S_BUSY, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %467, label %457

457:                                              ; preds = %452, %448
  %458 = load i32, i32* %11, align 4
  %459 = and i32 %458, 2
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %466, label %461

461:                                              ; preds = %457
  %462 = load i32, i32* %7, align 4
  %463 = load i32, i32* @ATA_S_BUSY, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %467, label %466

466:                                              ; preds = %461, %457
  br label %472

467:                                              ; preds = %461, %452
  %468 = call i32 @ata_udelay(i32 100000)
  br label %469

469:                                              ; preds = %467
  %470 = load i32, i32* %12, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %12, align 4
  br label %125

472:                                              ; preds = %466, %125
  %473 = load i64, i64* @bootverbose, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %472
  %476 = load i32, i32* %2, align 4
  %477 = load i32, i32* %5, align 4
  %478 = load i32, i32* %7, align 4
  %479 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %480 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %476, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %477, i32 %478, i32 %481)
  br label %483

483:                                              ; preds = %98, %475, %472
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ata_udelay(i32) #1

declare dso_local i32 @ATA_IDX_INL(%struct.ata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
