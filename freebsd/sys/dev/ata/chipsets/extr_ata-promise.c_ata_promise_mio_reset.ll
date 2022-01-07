; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.TYPE_3__*, %struct.ata_promise_sx4* }
%struct.TYPE_3__ = type { i32 }
%struct.ata_promise_sx4 = type { i32, i32 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@ATA_PM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SIGNATURE: %08x\0A\00", align 1
@ATA_ATA_MASTER = common dso_local global i8* null, align 8
@ATA_PORTMULTIPLIER = common dso_local global i32 0, align 4
@ATA_ATAPI_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No signature, assuming disk device\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"promise_mio_reset devices=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_promise_mio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_promise_mio_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca %struct.ata_promise_sx4*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_channel*
  store %struct.ata_channel* %13, %struct.ata_channel** %4, align 8
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %379 [
    i32 128, label %19
    i32 131, label %91
    i32 133, label %91
    i32 130, label %91
    i32 132, label %195
    i32 129, label %195
  ]

19:                                               ; preds = %1
  %20 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %21 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %20, i32 0, i32 2
  %22 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %21, align 8
  store %struct.ata_promise_sx4* %22, %struct.ata_promise_sx4** %5, align 8
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 7
  %30 = add nsw i32 787040, %29
  %31 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = call i32 @ATA_OUTL(i32 %25, i32 %30, i32 %34)
  %36 = call i32 @ata_udelay(i32 1000)
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %41 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 7
  %44 = add nsw i32 787040, %43
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 7
  %52 = add nsw i32 787040, %51
  %53 = call i32 @ATA_INL(i32 %47, i32 %52)
  %54 = and i32 %53, -16288
  %55 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %56 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = or i32 %54, %58
  %60 = call i32 @ATA_OUTL(i32 %39, i32 %44, i32 %59)
  %61 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %62 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %61, i32 0, i32 0
  %63 = call i32 @mtx_lock(i32* %62)
  %64 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %65 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %68 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ATA_INL(i32 %69, i32 786732)
  %71 = and i32 %70, -4000
  %72 = or i32 %71, 2048
  %73 = call i32 @ATA_OUTL(i32 %66, i32 786732, i32 %72)
  %74 = call i32 @DELAY(i32 10)
  %75 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %76 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %79 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ATA_INL(i32 %80, i32 786732)
  %82 = and i32 %81, -4000
  %83 = call i32 @ATA_OUTL(i32 %77, i32 786732, i32 %82)
  %84 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %85 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %87 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %86, i32 0, i32 0
  %88 = call i32 @mtx_unlock(i32* %87)
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @ata_generic_reset(i32 %89)
  br label %379

91:                                               ; preds = %1, %1, %1
  %92 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %93 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %110, label %98

98:                                               ; preds = %91
  %99 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %100 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 133
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %107 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %119

110:                                              ; preds = %105, %91
  %111 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %112 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %115 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 1114112, %116
  %118 = call i32 @ATA_OUTL(i32 %113, i32 108, i32 %117)
  br label %119

119:                                              ; preds = %110, %105, %98
  %120 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %121 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %124 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 %125, 7
  %127 = add nsw i32 608, %126
  %128 = call i32 @ATA_OUTL(i32 %122, i32 %127, i32 2048)
  %129 = call i32 @ata_udelay(i32 10000)
  %130 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %131 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %134 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = shl i32 %135, 7
  %137 = add nsw i32 608, %136
  %138 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %139 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %142 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 %143, 7
  %145 = add nsw i32 608, %144
  %146 = call i32 @ATA_INL(i32 %140, i32 %145)
  %147 = and i32 %146, -16288
  %148 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %149 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  %152 = or i32 %147, %151
  %153 = call i32 @ATA_OUTL(i32 %132, i32 %137, i32 %152)
  %154 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %155 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %172, label %160

160:                                              ; preds = %119
  %161 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %162 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %161, i32 0, i32 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 133
  br i1 %166, label %167, label %191

167:                                              ; preds = %160
  %168 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %169 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %172, label %191

172:                                              ; preds = %167, %119
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @ata_sata_phy_reset(i32 %173, i32 -1, i32 1)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* %2, align 4
  %178 = call i32 @ata_generic_reset(i32 %177)
  br label %182

179:                                              ; preds = %172
  %180 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %181 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %184 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %187 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 17, %188
  %190 = call i32 @ATA_OUTL(i32 %185, i32 108, i32 %189)
  br label %194

191:                                              ; preds = %167, %160
  %192 = load i32, i32* %2, align 4
  %193 = call i32 @ata_generic_reset(i32 %192)
  br label %194

194:                                              ; preds = %191, %182
  br label %379

195:                                              ; preds = %1, %1
  %196 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %197 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %196, i32 0, i32 1
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 129
  br i1 %201, label %214, label %202

202:                                              ; preds = %195
  %203 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %204 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %203, i32 0, i32 1
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 132
  br i1 %208, label %209, label %223

209:                                              ; preds = %202
  %210 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %211 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %212, 2
  br i1 %213, label %214, label %223

214:                                              ; preds = %209, %195
  %215 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %216 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %219 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = shl i32 1114112, %220
  %222 = call i32 @ATA_OUTL(i32 %217, i32 96, i32 %221)
  br label %223

223:                                              ; preds = %214, %209, %202
  %224 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %225 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %228 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = shl i32 %229, 7
  %231 = add nsw i32 608, %230
  %232 = call i32 @ATA_OUTL(i32 %226, i32 %231, i32 2048)
  %233 = call i32 @ata_udelay(i32 10000)
  %234 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %235 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %238 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = shl i32 %239, 7
  %241 = add nsw i32 608, %240
  %242 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %243 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %246 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = shl i32 %247, 7
  %249 = add nsw i32 608, %248
  %250 = call i32 @ATA_INL(i32 %244, i32 %249)
  %251 = and i32 %250, -16288
  %252 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %253 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 1
  %256 = or i32 %251, %255
  %257 = call i32 @ATA_OUTL(i32 %236, i32 %241, i32 %256)
  %258 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %259 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %258, i32 0, i32 1
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 129
  br i1 %263, label %276, label %264

264:                                              ; preds = %223
  %265 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %266 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %265, i32 0, i32 1
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 132
  br i1 %270, label %271, label %375

271:                                              ; preds = %264
  %272 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %273 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %274, 2
  br i1 %275, label %276, label %375

276:                                              ; preds = %271, %223
  %277 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %278 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %281 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = shl i32 %282, 8
  %284 = add nsw i32 1044, %283
  %285 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %286 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %289 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = shl i32 %290, 8
  %292 = add nsw i32 1044, %291
  %293 = call i32 @ATA_INL(i32 %287, i32 %292)
  %294 = and i32 %293, -4
  %295 = or i32 %294, 1
  %296 = call i32 @ATA_OUTL(i32 %279, i32 %284, i32 %295)
  %297 = load i32, i32* %2, align 4
  %298 = call i32 @ata_sata_phy_reset(i32 %297, i32 -1, i32 1)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %354

300:                                              ; preds = %276
  %301 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %302 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i32 (i32, i32)*, i32 (i32, i32)** %303, align 8
  %305 = load i32, i32* %2, align 4
  %306 = load i32, i32* @ATA_PM, align 4
  %307 = call i32 %304(i32 %305, i32 %306)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* @bootverbose, align 4
  %309 = or i32 1, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %300
  %312 = load i32, i32* %2, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i32 (i32, i8*, ...) @device_printf(i32 %312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %311, %300
  %316 = load i32, i32* %6, align 4
  %317 = ashr i32 %316, 16
  switch i32 %317, label %333 [
    i32 0, label %318
    i32 38505, label %323
    i32 60180, label %329
  ]

318:                                              ; preds = %315
  %319 = load i8*, i8** @ATA_ATA_MASTER, align 8
  %320 = ptrtoint i8* %319 to i32
  %321 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %322 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %321, i32 0, i32 1
  store i32 %320, i32* %322, align 4
  br label %344

323:                                              ; preds = %315
  %324 = load i32, i32* @ATA_PORTMULTIPLIER, align 4
  %325 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %326 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 4
  %327 = load i32, i32* %2, align 4
  %328 = call i32 @ata_pm_identify(i32 %327)
  br label %344

329:                                              ; preds = %315
  %330 = load i32, i32* @ATA_ATAPI_MASTER, align 4
  %331 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %332 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  br label %344

333:                                              ; preds = %315
  %334 = load i32, i32* @bootverbose, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i32, i32* %2, align 4
  %338 = call i32 (i32, i8*, ...) @device_printf(i32 %337, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %339

339:                                              ; preds = %336, %333
  %340 = load i8*, i8** @ATA_ATA_MASTER, align 8
  %341 = ptrtoint i8* %340 to i32
  %342 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %343 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 4
  br label %344

344:                                              ; preds = %339, %329, %323, %318
  %345 = load i32, i32* @bootverbose, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load i32, i32* %2, align 4
  %349 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %350 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 (i32, i8*, ...) @device_printf(i32 %348, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %351)
  br label %353

353:                                              ; preds = %347, %344
  br label %357

354:                                              ; preds = %276
  %355 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %356 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %355, i32 0, i32 1
  store i32 0, i32* %356, align 4
  br label %357

357:                                              ; preds = %354, %353
  %358 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %359 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %362 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = shl i32 17, %363
  %365 = call i32 @ATA_OUTL(i32 %360, i32 96, i32 %364)
  %366 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %367 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %370 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = shl i32 %371, 8
  %373 = add nsw i32 1256, %372
  %374 = call i32 @ATA_OUTL(i32 %368, i32 %373, i32 0)
  br label %378

375:                                              ; preds = %271, %264
  %376 = load i32, i32* %2, align 4
  %377 = call i32 @ata_generic_reset(i32 %376)
  br label %378

378:                                              ; preds = %375, %357
  br label %379

379:                                              ; preds = %1, %378, %194, %19
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ata_udelay(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ata_generic_reset(i32) #1

declare dso_local i32 @ata_sata_phy_reset(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ata_pm_identify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
