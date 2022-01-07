; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_sx4_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_sx4_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { %struct.ata_dma_prdentry* }
%struct.ata_dma_prdentry = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ata_pci_controller = type { i32, i32 }
%struct.ata_channel = type { i32 }

@ATA_PDC_CHN_OFFSET = common dso_local global i32 0, align 4
@ATA_PDC_APKT_OFFSET = common dso_local global i32 0, align 4
@ATA_PDC_HSG_OFFSET = common dso_local global i32 0, align 4
@ATA_DMA_EOT = common dso_local global i32 0, align 4
@ATA_PDC_LSG_OFFSET = common dso_local global i32 0, align 4
@ATA_PDC_BUF_OFFSET = common dso_local global i32 0, align 4
@ATA_PDC_BUF_BASE = common dso_local global i32 0, align 4
@ATA_PDC_ASG_OFFSET = common dso_local global i32 0, align 4
@ATA_PDC_HPKT_OFFSET = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@ATA_R_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_promise_sx4_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_sx4_command(%struct.ata_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_pci_controller*, align 8
  %6 = alloca %struct.ata_channel*, align 8
  %7 = alloca %struct.ata_dma_prdentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %3, align 8
  %13 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %14 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %19, %struct.ata_pci_controller** %5, align 8
  %20 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %21 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @device_get_softc(i32 %22)
  %24 = bitcast i8* %23 to %struct.ata_channel*
  store %struct.ata_channel* %24, %struct.ata_channel** %6, align 8
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rman_get_virtual(i32 %27)
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %30 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %34 [
    i32 145, label %35
    i32 142, label %35
    i32 141, label %35
    i32 138, label %35
    i32 137, label %35
    i32 133, label %35
    i32 132, label %35
    i32 129, label %35
    i32 128, label %35
    i32 136, label %48
    i32 144, label %48
    i32 143, label %48
    i32 134, label %48
    i32 135, label %48
    i32 140, label %107
    i32 139, label %107
    i32 131, label %107
    i32 130, label %107
  ]

34:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %455

35:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %37 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %40 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 %42, 2
  %44 = add nsw i32 787456, %43
  %45 = call i32 @ATA_OUTL(i32 %38, i32 %44, i32 1)
  %46 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %47 = call i32 @ata_generic_command(%struct.ata_request* %46)
  store i32 %47, i32* %2, align 4
  br label %455

48:                                               ; preds = %1, %1, %1, %1, %1
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %51 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %49, %54
  %56 = load i32, i32* @ATA_PDC_APKT_OFFSET, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %9, align 8
  %60 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %61 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = shl i32 %63, 16
  %65 = or i32 8, %64
  %66 = call i32 @htole32(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %70, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %75 = call i32 @ata_promise_apkt(i32* %73, %struct.ata_request* %74)
  %76 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %77 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ATA_OUTL(i32 %78, i32 787588, i32 1)
  %80 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %81 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %84 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = shl i32 %86, 2
  %88 = add nsw i32 787456, %87
  %89 = call i32 @ATA_OUTL(i32 %82, i32 %88, i32 1)
  %90 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %91 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %94 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 7
  %97 = add nsw i32 787008, %96
  %98 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %99 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* @ATA_PDC_APKT_OFFSET, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @htole32(i32 %104)
  %106 = call i32 @ATA_OUTL(i32 %92, i32 %97, i32 %105)
  store i32 0, i32* %2, align 4
  br label %455

107:                                              ; preds = %1, %1, %1, %1
  %108 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %109 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.ata_dma_prdentry*, %struct.ata_dma_prdentry** %111, align 8
  store %struct.ata_dma_prdentry* %112, %struct.ata_dma_prdentry** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %115 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %113, %118
  %120 = load i32, i32* @ATA_PDC_HSG_OFFSET, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %158, %107
  %125 = load %struct.ata_dma_prdentry*, %struct.ata_dma_prdentry** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %125, i64 %127
  %129 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load %struct.ata_dma_prdentry*, %struct.ata_dma_prdentry** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %136, i64 %138
  %140 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %141, i32* %146, align 4
  %147 = load %struct.ata_dma_prdentry*, %struct.ata_dma_prdentry** %7, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %147, i64 %149
  %151 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ATA_DMA_EOT, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %124
  %159 = load %struct.ata_dma_prdentry*, %struct.ata_dma_prdentry** %7, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %159, i64 %162
  %164 = getelementptr inbounds %struct.ata_dma_prdentry, %struct.ata_dma_prdentry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATA_DMA_EOT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br i1 %169, label %124, label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %173 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %176 = mul nsw i32 %174, %175
  %177 = add nsw i32 %171, %176
  %178 = load i32, i32* @ATA_PDC_LSG_OFFSET, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %9, align 8
  %182 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %183 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ATA_PDC_BUF_OFFSET, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32, i32* @ATA_PDC_BUF_BASE, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @htole32(i32 %188)
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %193 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ATA_DMA_EOT, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @htole32(i32 %196)
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %202 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %205 = mul nsw i32 %203, %204
  %206 = add nsw i32 %200, %205
  %207 = load i32, i32* @ATA_PDC_ASG_OFFSET, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i32*
  store i32* %210, i32** %9, align 8
  %211 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %212 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ATA_PDC_BUF_OFFSET, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load i32, i32* @ATA_PDC_BUF_BASE, align 4
  %217 = add nsw i32 %215, %216
  %218 = call i32 @htole32(i32 %217)
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 %218, i32* %220, align 4
  %221 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %222 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @ATA_DMA_EOT, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @htole32(i32 %225)
  %227 = load i32*, i32** %9, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %231 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %229, %234
  %236 = load i32, i32* @ATA_PDC_HPKT_OFFSET, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i32*
  store i32* %239, i32** %9, align 8
  %240 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %241 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @ATA_R_READ, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %262

246:                                              ; preds = %170
  %247 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %248 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 9
  %251 = shl i32 %250, 16
  %252 = or i32 20, %251
  %253 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %254 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 5
  %257 = shl i32 %256, 24
  %258 = or i32 %252, %257
  %259 = call i32 @htole32(i32 %258)
  %260 = load i32*, i32** %9, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %246, %170
  %263 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %264 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @ATA_R_WRITE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %262
  %270 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %271 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 13
  %274 = shl i32 %273, 16
  %275 = or i32 0, %274
  %276 = call i32 @htole32(i32 %275)
  %277 = load i32*, i32** %9, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %269, %262
  %280 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %281 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i32, i32* @ATA_PDC_HSG_OFFSET, align 4
  %286 = add nsw i32 %284, %285
  %287 = call i32 @htole32(i32 %286)
  %288 = load i32*, i32** %9, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %291 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %294 = mul nsw i32 %292, %293
  %295 = load i32, i32* @ATA_PDC_LSG_OFFSET, align 4
  %296 = add nsw i32 %294, %295
  %297 = call i32 @htole32(i32 %296)
  %298 = load i32*, i32** %9, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  store i32 %297, i32* %299, align 4
  %300 = load i32*, i32** %9, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  store i32 0, i32* %301, align 4
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %304 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %307 = mul nsw i32 %305, %306
  %308 = add nsw i32 %302, %307
  %309 = load i32, i32* @ATA_PDC_APKT_OFFSET, align 4
  %310 = add nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i32*
  store i32* %312, i32** %9, align 8
  %313 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %314 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @ATA_R_READ, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %279
  %320 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %321 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 5
  %324 = shl i32 %323, 16
  %325 = or i32 4, %324
  %326 = call i32 @htole32(i32 %325)
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %319, %279
  %330 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %331 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @ATA_R_WRITE, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %352

336:                                              ; preds = %329
  %337 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %338 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  %341 = shl i32 %340, 16
  %342 = or i32 16, %341
  %343 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %344 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, 13
  %347 = shl i32 %346, 24
  %348 = or i32 %342, %347
  %349 = call i32 @htole32(i32 %348)
  %350 = load i32*, i32** %9, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  store i32 %349, i32* %351, align 4
  br label %352

352:                                              ; preds = %336, %329
  %353 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %354 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %357 = mul nsw i32 %355, %356
  %358 = load i32, i32* @ATA_PDC_ASG_OFFSET, align 4
  %359 = add nsw i32 %357, %358
  %360 = call i32 @htole32(i32 %359)
  %361 = load i32*, i32** %9, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  store i32 %360, i32* %362, align 4
  %363 = load i32*, i32** %9, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  store i32 0, i32* %364, align 4
  %365 = load i32*, i32** %9, align 8
  %366 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %367 = call i32 @ata_promise_apkt(i32* %365, %struct.ata_request* %366)
  %368 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %369 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @ATA_OUTL(i32 %370, i32 787588, i32 1)
  %372 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %373 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @ATA_R_READ, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %416

378:                                              ; preds = %352
  %379 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %380 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %383 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %384, 5
  %386 = shl i32 %385, 2
  %387 = add nsw i32 787456, %386
  %388 = call i32 @ATA_OUTL(i32 %381, i32 %387, i32 1)
  %389 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %390 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %393 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, 9
  %396 = shl i32 %395, 2
  %397 = add nsw i32 787456, %396
  %398 = call i32 @ATA_OUTL(i32 %391, i32 %397, i32 1)
  %399 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %400 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %403 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, 7
  %406 = add nsw i32 787008, %405
  %407 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %408 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %411 = mul nsw i32 %409, %410
  %412 = load i32, i32* @ATA_PDC_APKT_OFFSET, align 4
  %413 = add nsw i32 %411, %412
  %414 = call i32 @htole32(i32 %413)
  %415 = call i32 @ATA_OUTL(i32 %401, i32 %406, i32 %414)
  br label %416

416:                                              ; preds = %378, %352
  %417 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %418 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @ATA_R_WRITE, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %454

423:                                              ; preds = %416
  %424 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %425 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %428 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  %431 = shl i32 %430, 2
  %432 = add nsw i32 787456, %431
  %433 = call i32 @ATA_OUTL(i32 %426, i32 %432, i32 1)
  %434 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %435 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %438 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, 13
  %441 = shl i32 %440, 2
  %442 = add nsw i32 787456, %441
  %443 = call i32 @ATA_OUTL(i32 %436, i32 %442, i32 1)
  %444 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %445 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %446 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %449 = mul nsw i32 %447, %448
  %450 = load i32, i32* @ATA_PDC_HPKT_OFFSET, align 4
  %451 = add nsw i32 %449, %450
  %452 = call i32 @htole32(i32 %451)
  %453 = call i32 @ata_promise_queue_hpkt(%struct.ata_pci_controller* %444, i32 %452)
  br label %454

454:                                              ; preds = %423, %416
  store i32 0, i32* %2, align 4
  br label %455

455:                                              ; preds = %454, %48, %35, %34
  %456 = load i32, i32* %2, align 4
  ret i32 %456
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_virtual(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ata_generic_command(%struct.ata_request*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @ata_promise_apkt(i32*, %struct.ata_request*) #1

declare dso_local i32 @ata_promise_queue_hpkt(%struct.ata_pci_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
