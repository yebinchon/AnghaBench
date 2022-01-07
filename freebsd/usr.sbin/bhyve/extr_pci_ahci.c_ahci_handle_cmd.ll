; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32 }

@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_ERROR_ABORT = common dso_local global i32 0, align 4
@ATA_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_SFPDMA_DSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported cmd:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @ahci_handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_cmd(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @ATA_S_BUSY, align 4
  %8 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %295 [
    i32 173, label %15
    i32 148, label %20
    i32 147, label %92
    i32 162, label %143
    i32 134, label %143
    i32 161, label %143
    i32 133, label %143
    i32 155, label %143
    i32 129, label %143
    i32 154, label %143
    i32 128, label %143
    i32 160, label %143
    i32 132, label %143
    i32 159, label %143
    i32 131, label %143
    i32 158, label %143
    i32 130, label %143
    i32 170, label %148
    i32 169, label %148
    i32 171, label %153
    i32 149, label %190
    i32 156, label %234
    i32 157, label %234
    i32 150, label %239
    i32 139, label %239
    i32 166, label %239
    i32 172, label %250
    i32 138, label %260
    i32 137, label %260
    i32 168, label %260
    i32 167, label %260
    i32 140, label %260
    i32 153, label %260
    i32 152, label %260
    i32 174, label %268
    i32 165, label %273
  ]

15:                                               ; preds = %3
  %16 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @handle_identify(%struct.ahci_port* %16, i32 %17, i32* %18)
  br label %310

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %72 [
    i32 143, label %24
    i32 142, label %47
    i32 145, label %47
    i32 144, label %47
    i32 146, label %47
    i32 141, label %53
  ]

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 12
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %34 [
    i32 151, label %28
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @ATA_S_DSC, align 4
  %30 = load i32, i32* @ATA_S_READY, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %33 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %46

34:                                               ; preds = %24
  %35 = load i32, i32* @ATA_S_ERROR, align 4
  %36 = load i32, i32* @ATA_S_READY, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %39 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ATA_ERROR_ABORT, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %43 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %34, %28
  br label %84

47:                                               ; preds = %20, %20, %20, %20
  %48 = load i32, i32* @ATA_S_DSC, align 4
  %49 = load i32, i32* @ATA_S_READY, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %52 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %84

53:                                               ; preds = %20
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 248
  switch i32 %57, label %66 [
    i32 164, label %58
    i32 163, label %58
    i32 135, label %59
    i32 136, label %59
  ]

58:                                               ; preds = %53, %53
  br label %66

59:                                               ; preds = %53, %53
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %65 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %53, %59, %58
  %67 = load i32, i32* @ATA_S_DSC, align 4
  %68 = load i32, i32* @ATA_S_READY, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %71 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %84

72:                                               ; preds = %20
  %73 = load i32, i32* @ATA_S_ERROR, align 4
  %74 = load i32, i32* @ATA_S_READY, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %77 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ATA_ERROR_ABORT, align 4
  %79 = shl i32 %78, 8
  %80 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %81 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %72, %66, %47, %46
  %85 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %89 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %85, i32 %86, i32* %87, i32 %90)
  br label %310

92:                                               ; preds = %3
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 12
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %92
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 12
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 128
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 12
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 12
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %105, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %102, %97
  %113 = load i32, i32* @ATA_S_ERROR, align 4
  %114 = load i32, i32* @ATA_S_READY, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %117 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @ATA_ERROR_ABORT, align 4
  %119 = shl i32 %118, 8
  %120 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %121 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %135

124:                                              ; preds = %102, %92
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %129 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @ATA_S_DSC, align 4
  %131 = load i32, i32* @ATA_S_READY, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %134 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %124, %112
  %136 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %140 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %136, i32 %137, i32* %138, i32 %141)
  br label %310

143:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %144 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @ahci_handle_rw(%struct.ahci_port* %144, i32 %145, i32* %146, i32 0)
  br label %310

148:                                              ; preds = %3, %3
  %149 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @ahci_handle_flush(%struct.ahci_port* %149, i32 %150, i32* %151)
  br label %310

153:                                              ; preds = %3
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 11
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %153
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ATA_DSM_TRIM, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 13
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @ahci_handle_dsm_trim(%struct.ahci_port* %175, i32 %176, i32* %177, i32 0)
  br label %310

179:                                              ; preds = %169, %164, %158, %153
  %180 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* @ATA_E_ABORT, align 4
  %184 = shl i32 %183, 8
  %185 = load i32, i32* @ATA_S_READY, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @ATA_S_ERROR, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %180, i32 %181, i32* %182, i32 %188)
  br label %310

190:                                              ; preds = %3
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 13
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 31
  %195 = load i32, i32* @ATA_SFPDMA_DSM, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %190
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 17
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %223

202:                                              ; preds = %197
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 16
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ATA_DSM_TRIM, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %202
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 11
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %208
  %214 = load i32*, i32** %6, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @ahci_handle_dsm_trim(%struct.ahci_port* %219, i32 %220, i32* %221, i32 0)
  br label %310

223:                                              ; preds = %213, %208, %202, %197, %190
  %224 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %225 = load i32, i32* %5, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* @ATA_E_ABORT, align 4
  %228 = shl i32 %227, 8
  %229 = load i32, i32* @ATA_S_READY, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @ATA_S_ERROR, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %224, i32 %225, i32* %226, i32 %232)
  br label %310

234:                                              ; preds = %3, %3
  %235 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %236 = load i32, i32* %5, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @ahci_handle_read_log(%struct.ahci_port* %235, i32 %236, i32* %237)
  br label %310

239:                                              ; preds = %3, %3, %3
  %240 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* @ATA_E_ABORT, align 4
  %244 = shl i32 %243, 8
  %245 = load i32, i32* @ATA_S_READY, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @ATA_S_ERROR, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %240, i32 %241, i32* %242, i32 %248)
  br label %310

250:                                              ; preds = %3
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 12
  store i32 255, i32* %252, align 4
  %253 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %254 = load i32, i32* %5, align 4
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* @ATA_S_READY, align 4
  %257 = load i32, i32* @ATA_S_DSC, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %253, i32 %254, i32* %255, i32 %258)
  br label %310

260:                                              ; preds = %3, %3, %3, %3, %3, %3, %3
  %261 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* @ATA_S_READY, align 4
  %265 = load i32, i32* @ATA_S_DSC, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %261, i32 %262, i32* %263, i32 %266)
  br label %310

268:                                              ; preds = %3
  %269 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %270 = load i32, i32* %5, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = call i32 @handle_atapi_identify(%struct.ahci_port* %269, i32 %270, i32* %271)
  br label %310

273:                                              ; preds = %3
  %274 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %275 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %273
  %279 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %280 = load i32, i32* %5, align 4
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* @ATA_E_ABORT, align 4
  %283 = shl i32 %282, 8
  %284 = load i32, i32* @ATA_S_READY, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @ATA_S_ERROR, align 4
  %287 = or i32 %285, %286
  %288 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %279, i32 %280, i32* %281, i32 %287)
  br label %294

289:                                              ; preds = %273
  %290 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = load i32*, i32** %6, align 8
  %293 = call i32 @handle_packet_cmd(%struct.ahci_port* %290, i32 %291, i32* %292)
  br label %294

294:                                              ; preds = %289, %278
  br label %310

295:                                              ; preds = %3
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @WPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %298)
  %300 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %301 = load i32, i32* %5, align 4
  %302 = load i32*, i32** %6, align 8
  %303 = load i32, i32* @ATA_E_ABORT, align 4
  %304 = shl i32 %303, 8
  %305 = load i32, i32* @ATA_S_READY, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @ATA_S_ERROR, align 4
  %308 = or i32 %306, %307
  %309 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %300, i32 %301, i32* %302, i32 %308)
  br label %310

310:                                              ; preds = %295, %294, %268, %260, %250, %239, %234, %223, %218, %179, %174, %148, %143, %135, %84, %15
  ret void
}

declare dso_local i32 @handle_identify(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @ahci_handle_rw(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @ahci_handle_flush(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @ahci_handle_dsm_trim(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @ahci_handle_read_log(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @handle_atapi_identify(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @handle_packet_cmd(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @WPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
