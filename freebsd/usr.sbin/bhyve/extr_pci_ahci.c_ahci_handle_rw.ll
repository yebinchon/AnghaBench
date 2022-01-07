; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, i64 }
%struct.ahci_ioreq = type { i32*, i32, %struct.blockif_req, i64, i64 }
%struct.blockif_req = type { i64 }
%struct.ahci_prdt_entry = type { i32 }
%struct.ahci_cmd_hdr = type { i32 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@ATA_WRITE = common dso_local global i32 0, align 4
@ATA_WRITE48 = common dso_local global i32 0, align 4
@ATA_WRITE_MUL = common dso_local global i32 0, align 4
@ATA_WRITE_MUL48 = common dso_local global i32 0, align 4
@ATA_WRITE_DMA = common dso_local global i32 0, align 4
@ATA_WRITE_DMA48 = common dso_local global i32 0, align 4
@ATA_WRITE_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_READ_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_READ48 = common dso_local global i32 0, align 4
@ATA_READ_MUL48 = common dso_local global i32 0, align 4
@ATA_READ_DMA48 = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i64)* @ahci_handle_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_rw(%struct.ahci_port* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ahci_ioreq*, align 8
  %10 = alloca %struct.blockif_req*, align 8
  %11 = alloca %struct.ahci_prdt_entry*, align 8
  %12 = alloca %struct.ahci_cmd_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 128
  %21 = bitcast i32* %20 to %struct.ahci_prdt_entry*
  store %struct.ahci_prdt_entry* %21, %struct.ahci_prdt_entry** %11, align 8
  %22 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %23 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AHCI_CL_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = inttoptr i64 %29 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %30, %struct.ahci_cmd_hdr** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATA_WRITE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %75, label %39

39:                                               ; preds = %4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATA_WRITE48, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %75, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_WRITE_MUL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATA_WRITE_MUL48, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATA_WRITE_DMA, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ATA_WRITE_DMA48, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATA_WRITE_FPDMA_QUEUED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63, %57, %51, %45, %39, %4
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ATA_WRITE_FPDMA_QUEUED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ATA_READ_FPDMA_QUEUED, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %130

88:                                               ; preds = %82, %76
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 10
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 40
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 9
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 32
  %97 = or i32 %92, %96
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 24
  %102 = or i32 %97, %101
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 16
  %107 = or i32 %102, %106
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 8
  %112 = or i32 %107, %111
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  store i32 %116, i32* %13, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 11
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %14, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %88
  store i64 65536, i64* %14, align 8
  br label %129

129:                                              ; preds = %128, %88
  store i32 1, i32* %17, align 4
  br label %237

130:                                              ; preds = %82
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATA_READ48, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %166, label %136

136:                                              ; preds = %130
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ATA_WRITE48, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %166, label %142

142:                                              ; preds = %136
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ATA_READ_MUL48, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %166, label %148

148:                                              ; preds = %142
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ATA_WRITE_MUL48, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %166, label %154

154:                                              ; preds = %148
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ATA_READ_DMA48, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATA_WRITE_DMA48, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %208

166:                                              ; preds = %160, %154, %148, %142, %136, %130
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 10
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 40
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 9
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 32
  %175 = or i32 %170, %174
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 8
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 24
  %180 = or i32 %175, %179
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 6
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 16
  %185 = or i32 %180, %184
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 5
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 8
  %190 = or i32 %185, %189
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %190, %193
  store i32 %194, i32* %13, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 13
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 8
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 12
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %198, %201
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %14, align 8
  %204 = load i64, i64* %14, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %166
  store i64 65536, i64* %14, align 8
  br label %207

207:                                              ; preds = %206, %166
  br label %236

208:                                              ; preds = %160
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 7
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 15
  %213 = shl i32 %212, 24
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 6
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 16
  %218 = or i32 %213, %217
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 8
  %223 = or i32 %218, %222
  %224 = load i32*, i32** %7, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %223, %226
  store i32 %227, i32* %13, align 4
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 12
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %14, align 8
  %232 = load i64, i64* %14, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %208
  store i64 256, i64* %14, align 8
  br label %235

235:                                              ; preds = %234, %208
  br label %236

236:                                              ; preds = %235, %207
  br label %237

237:                                              ; preds = %236, %129
  %238 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %239 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @blockif_sectsz(i32 %240)
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = mul nsw i64 %243, %241
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %13, align 4
  %246 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %247 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @blockif_sectsz(i32 %248)
  %250 = load i64, i64* %14, align 8
  %251 = mul nsw i64 %250, %249
  store i64 %251, i64* %14, align 8
  %252 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %253 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %252, i32 0, i32 3
  %254 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %253)
  store %struct.ahci_ioreq* %254, %struct.ahci_ioreq** %9, align 8
  %255 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %256 = icmp ne %struct.ahci_ioreq* %255, null
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  %259 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %260 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %259, i32 0, i32 3
  %261 = load i32, i32* @io_flist, align 4
  %262 = call i32 @STAILQ_REMOVE_HEAD(i32* %260, i32 %261)
  %263 = load i32*, i32** %7, align 8
  %264 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %265 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %264, i32 0, i32 0
  store i32* %263, i32** %265, align 8
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %268 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 8
  %269 = load i64, i64* %14, align 8
  %270 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %271 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %270, i32 0, i32 4
  store i64 %269, i64* %271, align 8
  %272 = load i64, i64* %8, align 8
  %273 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %274 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %273, i32 0, i32 3
  store i64 %272, i64* %274, align 8
  %275 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %276 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %275, i32 0, i32 2
  store %struct.blockif_req* %276, %struct.blockif_req** %10, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = load i64, i64* %8, align 8
  %280 = add nsw i64 %278, %279
  %281 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %282 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  %283 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %284 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %285 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %11, align 8
  %286 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %12, align 8
  %287 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @ahci_build_iov(%struct.ahci_port* %283, %struct.ahci_ioreq* %284, %struct.ahci_prdt_entry* %285, i32 %288)
  %290 = load i32, i32* %6, align 4
  %291 = shl i32 1, %290
  %292 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %293 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %297 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %296, i32 0, i32 2
  %298 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %299 = load i32, i32* @io_blist, align 4
  %300 = call i32 @TAILQ_INSERT_HEAD(i32* %297, %struct.ahci_ioreq* %298, i32 %299)
  %301 = load i32, i32* %17, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %237
  %304 = load i32, i32* %16, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %308 = load i32, i32* %6, align 4
  %309 = call i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %303, %237
  %311 = load i32, i32* %18, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %315 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %318 = call i32 @blockif_read(i32 %316, %struct.blockif_req* %317)
  store i32 %318, i32* %15, align 4
  br label %325

319:                                              ; preds = %310
  %320 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %321 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %324 = call i32 @blockif_write(i32 %322, %struct.blockif_req* %323)
  store i32 %324, i32* %15, align 4
  br label %325

325:                                              ; preds = %319, %313
  %326 = load i32, i32* %15, align 4
  %327 = icmp eq i32 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  ret void
}

declare dso_local i64 @blockif_sectsz(i32) #1

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahci_build_iov(%struct.ahci_port*, %struct.ahci_ioreq*, %struct.ahci_prdt_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port*, i32) #1

declare dso_local i32 @blockif_read(i32, %struct.blockif_req*) #1

declare dso_local i32 @blockif_write(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
