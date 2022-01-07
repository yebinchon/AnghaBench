; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.pci_map = type { i32 }
%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@PCIM_BAR_IO_RESERVED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"\09map[%02x]: type %s, range %2d, base %#jx, size %2d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c", port disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c", memory disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c", enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"pci%d:%d:%d:%d bar %#x too many address bits\00", align 1
@pci_enable_io_modes = common dso_local global i64 0, align 8
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@RF_PREFETCHABLE = common dso_local global i32 0, align 4
@pci_clear_bars = common dso_local global i64 0, align 8
@pci_do_realloc_bars = common dso_local global i64 0, align 8
@PCI_QUIRK_REALLOC_BAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"pci%d:%d:%d:%d bar %#x failed to allocate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource_list*, i32, i32)* @pci_add_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_add_map(i32 %0, i32 %1, i32 %2, %struct.resource_list* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_map*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.resource*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource_list* %3, %struct.resource_list** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.pci_map* @pci_find_bar(i32 %29, i32 %30)
  store %struct.pci_map* %31, %struct.pci_map** %14, align 8
  %32 = load %struct.pci_map*, %struct.pci_map** %14, align 8
  %33 = icmp ne %struct.pci_map* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %6
  %35 = load %struct.pci_map*, %struct.pci_map** %14, align 8
  %36 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_maprange(i32 %37)
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %24, align 4
  %40 = icmp eq i32 %39, 64
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %7, align 4
  br label %347

44:                                               ; preds = %6
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pci_read_bar(i32 %45, i32 %46, i32* %16, i32* %17, i32* null)
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @PCI_BAR_MEM(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %52, i32* %26, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %61

59:                                               ; preds = %44
  %60 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %60, i32* %26, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @pci_mapsize(i32 %62)
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @pci_mapbase(i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @pci_maprange(i32 %69)
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp eq i32 %71, 64
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 2, i32 1
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i64 @PCI_BAR_IO(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %61
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @PCIM_BAR_IO_RESERVED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %21, align 4
  store i32 %84, i32* %7, align 4
  br label %347

85:                                               ; preds = %78, %61
  %86 = load i32, i32* %26, align 4
  %87 = load i32, i32* @SYS_RES_MEMORY, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %25, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %99, label %92

92:                                               ; preds = %89, %85
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* @SYS_RES_IOPORT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %25, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %89
  %100 = load i32, i32* %21, align 4
  store i32 %100, i32* %7, align 4
  br label %347

101:                                              ; preds = %96, %92
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %25, align 4
  %106 = call %struct.pci_map* @pci_add_bar(i32 %102, i32 %103, i32 %104, i32 %105)
  store %struct.pci_map* %106, %struct.pci_map** %14, align 8
  %107 = load i64, i64* @bootverbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i8* @pci_maptype(i32 %111)
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %25, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %110, i8* %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* @SYS_RES_IOPORT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @pci_porten(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %139

126:                                              ; preds = %120, %109
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* @SYS_RES_MEMORY, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @pci_memen(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %138

136:                                              ; preds = %130, %126
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %134
  br label %139

139:                                              ; preds = %138, %124
  br label %140

140:                                              ; preds = %139, %101
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %21, align 4
  store i32 %151, i32* %7, align 4
  br label %347

152:                                              ; preds = %146, %140
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @pci_get_domain(i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @pci_get_bus(i32 %160)
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @pci_get_slot(i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @pci_get_function(i32 %164)
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %161, i32 %163, i32 %165, i32 %166)
  %168 = load i32, i32* %21, align 4
  store i32 %168, i32* %7, align 4
  br label %347

169:                                              ; preds = %152
  %170 = load i64, i64* @pci_enable_io_modes, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %211

172:                                              ; preds = %169
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* @SYS_RES_IOPORT, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @pci_porten(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @PCIR_COMMAND, align 4
  %183 = call i32 @pci_read_config(i32 %181, i32 %182, i32 2)
  store i32 %183, i32* %27, align 4
  %184 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %185 = load i32, i32* %27, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %27, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @PCIR_COMMAND, align 4
  %189 = load i32, i32* %27, align 4
  %190 = call i32 @pci_write_config(i32 %187, i32 %188, i32 %189, i32 2)
  br label %191

191:                                              ; preds = %180, %176, %172
  %192 = load i32, i32* %26, align 4
  %193 = load i32, i32* @SYS_RES_MEMORY, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @pci_memen(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @PCIR_COMMAND, align 4
  %202 = call i32 @pci_read_config(i32 %200, i32 %201, i32 2)
  store i32 %202, i32* %27, align 4
  %203 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %204 = load i32, i32* %27, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %27, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @PCIR_COMMAND, align 4
  %208 = load i32, i32* %27, align 4
  %209 = call i32 @pci_write_config(i32 %206, i32 %207, i32 %208, i32 2)
  br label %210

210:                                              ; preds = %199, %195, %191
  br label %232

211:                                              ; preds = %169
  %212 = load i32, i32* %26, align 4
  %213 = load i32, i32* @SYS_RES_IOPORT, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @pci_porten(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %21, align 4
  store i32 %220, i32* %7, align 4
  br label %347

221:                                              ; preds = %215, %211
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* @SYS_RES_MEMORY, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @pci_memen(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %21, align 4
  store i32 %230, i32* %7, align 4
  br label %347

231:                                              ; preds = %225, %221
  br label %232

232:                                              ; preds = %231, %210
  %233 = load i32, i32* %25, align 4
  %234 = shl i32 1, %233
  store i32 %234, i32* %20, align 4
  %235 = load i32, i32* %25, align 4
  %236 = call i32 @RF_ALIGNMENT_LOG2(i32 %235)
  store i32 %236, i32* %23, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load i32, i32* @RF_PREFETCHABLE, align 4
  %241 = load i32, i32* %23, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %23, align 4
  br label %243

243:                                              ; preds = %239, %232
  %244 = load i32, i32* %22, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %17, align 4
  %249 = call i32 @pci_mapbase(i32 %248)
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %254, label %251

251:                                              ; preds = %246
  %252 = load i64, i64* @pci_clear_bars, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251, %246, %243
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %261

255:                                              ; preds = %251
  %256 = load i32, i32* %15, align 4
  store i32 %256, i32* %18, align 4
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %257, %258
  %260 = sub nsw i32 %259, 1
  store i32 %260, i32* %19, align 4
  br label %261

261:                                              ; preds = %255, %254
  %262 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %263 = load i32, i32* %26, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %20, align 4
  %268 = call i32 @resource_list_add(%struct.resource_list* %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267)
  %269 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %26, align 4
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %23, align 4
  %277 = call %struct.resource* @resource_list_reserve(%struct.resource_list* %269, i32 %270, i32 %271, i32 %272, i32* %10, i32 %273, i32 %274, i32 %275, i32 %276)
  store %struct.resource* %277, %struct.resource** %28, align 8
  %278 = load i64, i64* @pci_do_realloc_bars, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %261
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @pci_get_devid(i32 %281)
  %283 = load i32, i32* @PCI_QUIRK_REALLOC_BAR, align 4
  %284 = call i64 @pci_has_quirk(i32 %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %312

286:                                              ; preds = %280, %261
  %287 = load %struct.resource*, %struct.resource** %28, align 8
  %288 = icmp eq %struct.resource* %287, null
  br i1 %288, label %289, label %312

289:                                              ; preds = %286
  %290 = load i32, i32* %18, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %19, align 4
  %294 = icmp ne i32 %293, -1
  br i1 %294, label %295, label %312

295:                                              ; preds = %292, %289
  %296 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %297 = load i32, i32* %26, align 4
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @resource_list_delete(%struct.resource_list* %296, i32 %297, i32 %298)
  %300 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %301 = load i32, i32* %26, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %20, align 4
  %304 = call i32 @resource_list_add(%struct.resource_list* %300, i32 %301, i32 %302, i32 0, i32 -1, i32 %303)
  %305 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %26, align 4
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %23, align 4
  %311 = call %struct.resource* @resource_list_reserve(%struct.resource_list* %305, i32 %306, i32 %307, i32 %308, i32* %10, i32 0, i32 -1, i32 %309, i32 %310)
  store %struct.resource* %311, %struct.resource** %28, align 8
  br label %312

312:                                              ; preds = %295, %292, %286, %280
  %313 = load %struct.resource*, %struct.resource** %28, align 8
  %314 = icmp eq %struct.resource* %313, null
  br i1 %314, label %315, label %338

315:                                              ; preds = %312
  %316 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %317 = load i32, i32* %26, align 4
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @resource_list_delete(%struct.resource_list* %316, i32 %317, i32 %318)
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %26, align 4
  %322 = call i32 @pci_disable_io(i32 %320, i32 %321)
  %323 = load i64, i64* @bootverbose, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %315
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @pci_get_domain(i32 %327)
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @pci_get_bus(i32 %329)
  %331 = load i32, i32* %9, align 4
  %332 = call i32 @pci_get_slot(i32 %331)
  %333 = load i32, i32* %9, align 4
  %334 = call i32 @pci_get_function(i32 %333)
  %335 = load i32, i32* %10, align 4
  %336 = call i32 @device_printf(i32 %326, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %328, i32 %330, i32 %332, i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %325, %315
  br label %345

338:                                              ; preds = %312
  %339 = load %struct.resource*, %struct.resource** %28, align 8
  %340 = call i32 @rman_get_start(%struct.resource* %339)
  store i32 %340, i32* %18, align 4
  %341 = load i32, i32* %9, align 4
  %342 = load %struct.pci_map*, %struct.pci_map** %14, align 8
  %343 = load i32, i32* %18, align 4
  %344 = call i32 @pci_write_bar(i32 %341, %struct.pci_map* %342, i32 %343)
  br label %345

345:                                              ; preds = %338, %337
  %346 = load i32, i32* %21, align 4
  store i32 %346, i32* %7, align 4
  br label %347

347:                                              ; preds = %345, %229, %219, %156, %150, %99, %83, %34
  %348 = load i32, i32* %7, align 4
  ret i32 %348
}

declare dso_local %struct.pci_map* @pci_find_bar(i32, i32) #1

declare dso_local i32 @pci_maprange(i32) #1

declare dso_local i32 @pci_read_bar(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @PCI_BAR_MEM(i32) #1

declare dso_local i32 @pci_mapsize(i32) #1

declare dso_local i32 @pci_mapbase(i32) #1

declare dso_local i64 @PCI_BAR_IO(i32) #1

declare dso_local %struct.pci_map* @pci_add_bar(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @pci_maptype(i32) #1

declare dso_local i32 @pci_porten(i32) #1

declare dso_local i32 @pci_memen(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @RF_ALIGNMENT_LOG2(i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @resource_list_reserve(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @pci_has_quirk(i32, i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @resource_list_delete(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @pci_disable_io(i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @pci_write_bar(i32, %struct.pci_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
