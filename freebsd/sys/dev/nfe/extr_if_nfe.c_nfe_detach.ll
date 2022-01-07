; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i64, i64, i32, i32*, i32, i32, i32, i32**, i32*, i32*, i32**, i32**, i32*, i32, i64, i32*, i32, i32* }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"nfe mutex not initialized\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@NFE_CORRECT_MACADDR = common dso_local global i32 0, align 4
@NFE_MSI_MESSAGES = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.nfe_softc* @device_get_softc(i32 %13)
  store %struct.nfe_softc* %14, %struct.nfe_softc** %3, align 8
  %15 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %15, i32 0, i32 3
  %17 = call i32 @mtx_initialized(i32* %16)
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %19, i32 0, i32 18
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @device_is_attached(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %27 = call i32 @NFE_LOCK(%struct.nfe_softc* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @nfe_stop(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @IFF_UP, align 4
  %32 = call i32 @if_setflagbits(i32* %30, i32 0, i32 %31)
  %33 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %34 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %33)
  %35 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %35, i32 0, i32 17
  %37 = call i32 @callout_drain(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ether_ifdetach(i32* %38)
  br label %40

40:                                               ; preds = %25, %1
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %82

43:                                               ; preds = %40
  %44 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %45 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %57 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %56, i32 0, i32 16
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 5, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %12, i64 %65
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %51

70:                                               ; preds = %51
  br label %77

71:                                               ; preds = %43
  %72 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %73 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %72, i32 0, i32 16
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %76 = call i32 @bcopy(i32* %74, i32* %12, i32 %75)
  br label %77

77:                                               ; preds = %71, %70
  %78 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %79 = call i32 @nfe_set_macaddr(%struct.nfe_softc* %78, i32* %12)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @if_free(i32* %80)
  br label %82

82:                                               ; preds = %77, %40
  %83 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %84 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %83, i32 0, i32 15
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %2, align 4
  %89 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %90 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %89, i32 0, i32 15
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @device_delete_child(i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @bus_generic_detach(i32 %94)
  %96 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %97 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %96, i32 0, i32 13
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %93
  %101 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %102 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %101, i32 0, i32 13
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %105 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %104, i32 0, i32 14
  %106 = call i32 @taskqueue_drain(i32* %103, i32* %105)
  %107 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %108 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %107, i32 0, i32 13
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @taskqueue_free(i32* %109)
  %111 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %112 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %111, i32 0, i32 13
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %100, %93
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %151, %113
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %154

118:                                              ; preds = %114
  %119 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %120 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %119, i32 0, i32 12
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %150

127:                                              ; preds = %118
  %128 = load i32, i32* %2, align 4
  %129 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %130 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %129, i32 0, i32 11
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %137 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %136, i32 0, i32 12
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @bus_teardown_intr(i32 %128, i32* %135, i32* %142)
  %144 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %145 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %144, i32 0, i32 12
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %127, %118
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %114

154:                                              ; preds = %114
  %155 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %156 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %154
  %160 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %161 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %159
  %165 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %166 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %165, i32 0, i32 11
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 0
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @SYS_RES_IRQ, align 4
  %174 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %175 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %174, i32 0, i32 11
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @bus_release_resource(i32 %172, i32 %173, i32 0, i32* %178)
  br label %180

180:                                              ; preds = %171, %164
  br label %222

181:                                              ; preds = %159, %154
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %182

182:                                              ; preds = %214, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %219

186:                                              ; preds = %182
  %187 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %188 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %187, i32 0, i32 11
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %213

195:                                              ; preds = %186
  %196 = load i32, i32* %2, align 4
  %197 = load i32, i32* @SYS_RES_IRQ, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %200 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %199, i32 0, i32 11
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @bus_release_resource(i32 %196, i32 %197, i32 %198, i32* %205)
  %207 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %208 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %207, i32 0, i32 11
  %209 = load i32**, i32*** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  store i32* null, i32** %212, align 8
  br label %213

213:                                              ; preds = %195, %186
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %182

219:                                              ; preds = %182
  %220 = load i32, i32* %2, align 4
  %221 = call i32 @pci_release_msi(i32 %220)
  br label %222

222:                                              ; preds = %219, %180
  %223 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %224 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %223, i32 0, i32 10
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %237

227:                                              ; preds = %222
  %228 = load i32, i32* %2, align 4
  %229 = load i32, i32* @SYS_RES_MEMORY, align 4
  %230 = call i32 @PCIR_BAR(i32 3)
  %231 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %232 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %231, i32 0, i32 10
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @bus_release_resource(i32 %228, i32 %229, i32 %230, i32* %233)
  %235 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %236 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %235, i32 0, i32 10
  store i32* null, i32** %236, align 8
  br label %237

237:                                              ; preds = %227, %222
  %238 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %239 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %238, i32 0, i32 9
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* @SYS_RES_MEMORY, align 4
  %245 = call i32 @PCIR_BAR(i32 2)
  %246 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %247 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %246, i32 0, i32 9
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @bus_release_resource(i32 %243, i32 %244, i32 %245, i32* %248)
  %250 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %251 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %250, i32 0, i32 9
  store i32* null, i32** %251, align 8
  br label %252

252:                                              ; preds = %242, %237
  %253 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %254 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %253, i32 0, i32 8
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 0
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %273

259:                                              ; preds = %252
  %260 = load i32, i32* %2, align 4
  %261 = load i32, i32* @SYS_RES_MEMORY, align 4
  %262 = call i32 @PCIR_BAR(i32 0)
  %263 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %264 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %263, i32 0, i32 8
  %265 = load i32**, i32*** %264, align 8
  %266 = getelementptr inbounds i32*, i32** %265, i64 0
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @bus_release_resource(i32 %260, i32 %261, i32 %262, i32* %267)
  %269 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %270 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %269, i32 0, i32 8
  %271 = load i32**, i32*** %270, align 8
  %272 = getelementptr inbounds i32*, i32** %271, i64 0
  store i32* null, i32** %272, align 8
  br label %273

273:                                              ; preds = %259, %252
  %274 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %275 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %276 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %275, i32 0, i32 7
  %277 = call i32 @nfe_free_tx_ring(%struct.nfe_softc* %274, i32* %276)
  %278 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %279 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %280 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %279, i32 0, i32 6
  %281 = call i32 @nfe_free_rx_ring(%struct.nfe_softc* %278, i32* %280)
  %282 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %283 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %284 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %283, i32 0, i32 5
  %285 = call i32 @nfe_free_jrx_ring(%struct.nfe_softc* %282, i32* %284)
  %286 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %287 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %273
  %291 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %292 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %291, i32 0, i32 4
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @bus_dma_tag_destroy(i32* %293)
  %295 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %296 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %295, i32 0, i32 4
  store i32* null, i32** %296, align 8
  br label %297

297:                                              ; preds = %290, %273
  %298 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %299 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %298, i32 0, i32 3
  %300 = call i32 @mtx_destroy(i32* %299)
  %301 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %301)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nfe_softc* @device_get_softc(i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @mtx_initialized(i32*) #2

declare dso_local i64 @device_is_attached(i32) #2

declare dso_local i32 @NFE_LOCK(%struct.nfe_softc*) #2

declare dso_local i32 @nfe_stop(i32*) #2

declare dso_local i32 @if_setflagbits(i32*, i32, i32) #2

declare dso_local i32 @NFE_UNLOCK(%struct.nfe_softc*) #2

declare dso_local i32 @callout_drain(i32*) #2

declare dso_local i32 @ether_ifdetach(i32*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @nfe_set_macaddr(%struct.nfe_softc*, i32*) #2

declare dso_local i32 @if_free(i32*) #2

declare dso_local i32 @device_delete_child(i32, i64) #2

declare dso_local i32 @bus_generic_detach(i32) #2

declare dso_local i32 @taskqueue_drain(i32*, i32*) #2

declare dso_local i32 @taskqueue_free(i32*) #2

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #2

declare dso_local i32 @pci_release_msi(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i32 @nfe_free_tx_ring(%struct.nfe_softc*, i32*) #2

declare dso_local i32 @nfe_free_rx_ring(%struct.nfe_softc*, i32*) #2

declare dso_local i32 @nfe_free_jrx_ring(%struct.nfe_softc*, i32*) #2

declare dso_local i32 @bus_dma_tag_destroy(i32*) #2

declare dso_local i32 @mtx_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
