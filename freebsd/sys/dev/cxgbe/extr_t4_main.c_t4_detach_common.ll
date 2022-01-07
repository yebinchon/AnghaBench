; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_detach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_detach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i64, i32, i32, i32, %struct.memwin*, i32*, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.port_info*, i64, i64, i64, i64, i32, i64, i32, i64, i32, i32, i32, %struct.port_info**, i32* }
%struct.memwin = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.port_info*, %struct.port_info*, %struct.port_info* }
%struct.TYPE_5__ = type { %struct.port_info* }
%struct.TYPE_4__ = type { %struct.port_info*, %struct.port_info*, %struct.port_info*, %struct.port_info*, %struct.port_info*, %struct.port_info*, %struct.port_info*, %struct.port_info*, %struct.port_info* }
%struct.port_info = type { %struct.port_info*, i32, i64, i32 }

@t4_list_lock = common dso_local global i32 0, align 4
@t4_list = common dso_local global i32 0, align 4
@adapter = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@CHK_MBOX_ACCESS = common dso_local global i32 0, align 4
@FULL_INIT_DONE = common dso_local global i32 0, align 4
@IS_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to detach child devices: %d\0A\00", align 1
@FW_OK = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@INTR_MSI = common dso_local global i64 0, align 8
@INTR_MSIX = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@NUM_MEMWIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_detach_common(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.memwin*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.adapter* @device_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 27
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 27
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @destroy_dev(i32* %18)
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 27
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  %23 = call i32 @sx_xlock(i32* @t4_list_lock)
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = load i32, i32* @adapter, align 4
  %26 = load i32, i32* @link, align 4
  %27 = call i32 @SLIST_REMOVE(i32* @t4_list, %struct.adapter* %24, i32 %25, i32 %26)
  %28 = call i32 @sx_xunlock(i32* @t4_list_lock)
  %29 = load i32, i32* @CHK_MBOX_ACCESS, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FULL_INIT_DONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %22
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IS_VF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.adapter*, %struct.adapter** %4, align 8
  %50 = call i32 @t4_intr_disable(%struct.adapter* %49)
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @device_is_attached(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @bus_generic_detach(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %422

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %52
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.adapter*, %struct.adapter** %4, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = load %struct.adapter*, %struct.adapter** %4, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 14
  %78 = load %struct.port_info*, %struct.port_info** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.port_info, %struct.port_info* %78, i64 %80
  %82 = call i32 @t4_free_irq(%struct.adapter* %75, %struct.port_info* %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load %struct.adapter*, %struct.adapter** %4, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IS_VF, align 4
  %91 = load i32, i32* @FW_OK, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = load i32, i32* @FW_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.adapter*, %struct.adapter** %4, align 8
  %98 = call i32 @t4_free_tx_sched(%struct.adapter* %97)
  br label %99

99:                                               ; preds = %96, %86
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %152, %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @MAX_NPORTS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %155

104:                                              ; preds = %100
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 26
  %107 = load %struct.port_info**, %struct.port_info*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.port_info*, %struct.port_info** %107, i64 %109
  %111 = load %struct.port_info*, %struct.port_info** %110, align 8
  store %struct.port_info* %111, %struct.port_info** %5, align 8
  %112 = load %struct.port_info*, %struct.port_info** %5, align 8
  %113 = icmp ne %struct.port_info* %112, null
  br i1 %113, label %114, label %151

114:                                              ; preds = %104
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = load %struct.adapter*, %struct.adapter** %4, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 24
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.adapter*, %struct.adapter** %4, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 25
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.port_info*, %struct.port_info** %5, align 8
  %123 = getelementptr inbounds %struct.port_info, %struct.port_info* %122, i32 0, i32 0
  %124 = load %struct.port_info*, %struct.port_info** %123, align 8
  %125 = getelementptr inbounds %struct.port_info, %struct.port_info* %124, i64 0
  %126 = getelementptr inbounds %struct.port_info, %struct.port_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @t4_free_vi(%struct.adapter* %115, i32 %118, i32 %121, i32 0, i32 %127)
  %129 = load %struct.port_info*, %struct.port_info** %5, align 8
  %130 = getelementptr inbounds %struct.port_info, %struct.port_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %114
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.port_info*, %struct.port_info** %5, align 8
  %136 = getelementptr inbounds %struct.port_info, %struct.port_info* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @device_delete_child(i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %133, %114
  %140 = load %struct.port_info*, %struct.port_info** %5, align 8
  %141 = getelementptr inbounds %struct.port_info, %struct.port_info* %140, i32 0, i32 1
  %142 = call i32 @mtx_destroy(i32* %141)
  %143 = load %struct.port_info*, %struct.port_info** %5, align 8
  %144 = getelementptr inbounds %struct.port_info, %struct.port_info* %143, i32 0, i32 0
  %145 = load %struct.port_info*, %struct.port_info** %144, align 8
  %146 = load i32, i32* @M_CXGBE, align 4
  %147 = call i32 @free(%struct.port_info* %145, i32 %146)
  %148 = load %struct.port_info*, %struct.port_info** %5, align 8
  %149 = load i32, i32* @M_CXGBE, align 4
  %150 = call i32 @free(%struct.port_info* %148, i32 %149)
  br label %151

151:                                              ; preds = %139, %104
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %100

155:                                              ; preds = %100
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @device_delete_children(i32 %156)
  %158 = load %struct.adapter*, %struct.adapter** %4, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FULL_INIT_DONE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load %struct.adapter*, %struct.adapter** %4, align 8
  %166 = call i32 @adapter_full_uninit(%struct.adapter* %165)
  br label %167

167:                                              ; preds = %164, %155
  %168 = load %struct.adapter*, %struct.adapter** %4, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IS_VF, align 4
  %172 = load i32, i32* @FW_OK, align 4
  %173 = or i32 %171, %172
  %174 = and i32 %170, %173
  %175 = load i32, i32* @FW_OK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %167
  %178 = load %struct.adapter*, %struct.adapter** %4, align 8
  %179 = load %struct.adapter*, %struct.adapter** %4, align 8
  %180 = getelementptr inbounds %struct.adapter, %struct.adapter* %179, i32 0, i32 24
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @t4_fw_bye(%struct.adapter* %178, i32 %181)
  br label %183

183:                                              ; preds = %177, %167
  %184 = load %struct.adapter*, %struct.adapter** %4, align 8
  %185 = getelementptr inbounds %struct.adapter, %struct.adapter* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @INTR_MSI, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = load %struct.adapter*, %struct.adapter** %4, align 8
  %191 = getelementptr inbounds %struct.adapter, %struct.adapter* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @INTR_MSIX, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189, %183
  %196 = load i32, i32* %3, align 4
  %197 = call i32 @pci_release_msi(i32 %196)
  br label %198

198:                                              ; preds = %195, %189
  %199 = load %struct.adapter*, %struct.adapter** %4, align 8
  %200 = getelementptr inbounds %struct.adapter, %struct.adapter* %199, i32 0, i32 22
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @SYS_RES_MEMORY, align 4
  %206 = load %struct.adapter*, %struct.adapter** %4, align 8
  %207 = getelementptr inbounds %struct.adapter, %struct.adapter* %206, i32 0, i32 23
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.adapter*, %struct.adapter** %4, align 8
  %210 = getelementptr inbounds %struct.adapter, %struct.adapter* %209, i32 0, i32 22
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @bus_release_resource(i32 %204, i32 %205, i32 %208, i64 %211)
  br label %213

213:                                              ; preds = %203, %198
  %214 = load %struct.adapter*, %struct.adapter** %4, align 8
  %215 = getelementptr inbounds %struct.adapter, %struct.adapter* %214, i32 0, i32 20
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* @SYS_RES_MEMORY, align 4
  %221 = load %struct.adapter*, %struct.adapter** %4, align 8
  %222 = getelementptr inbounds %struct.adapter, %struct.adapter* %221, i32 0, i32 21
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.adapter*, %struct.adapter** %4, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 20
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @bus_release_resource(i32 %219, i32 %220, i32 %223, i64 %226)
  br label %228

228:                                              ; preds = %218, %213
  %229 = load %struct.adapter*, %struct.adapter** %4, align 8
  %230 = getelementptr inbounds %struct.adapter, %struct.adapter* %229, i32 0, i32 18
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %228
  %234 = load i32, i32* %3, align 4
  %235 = load i32, i32* @SYS_RES_MEMORY, align 4
  %236 = load %struct.adapter*, %struct.adapter** %4, align 8
  %237 = getelementptr inbounds %struct.adapter, %struct.adapter* %236, i32 0, i32 19
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.adapter*, %struct.adapter** %4, align 8
  %240 = getelementptr inbounds %struct.adapter, %struct.adapter* %239, i32 0, i32 18
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @bus_release_resource(i32 %234, i32 %235, i32 %238, i64 %241)
  br label %243

243:                                              ; preds = %233, %228
  %244 = load %struct.adapter*, %struct.adapter** %4, align 8
  %245 = getelementptr inbounds %struct.adapter, %struct.adapter* %244, i32 0, i32 17
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.adapter*, %struct.adapter** %4, align 8
  %250 = getelementptr inbounds %struct.adapter, %struct.adapter* %249, i32 0, i32 17
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @t4_free_l2t(i64 %251)
  br label %253

253:                                              ; preds = %248, %243
  %254 = load %struct.adapter*, %struct.adapter** %4, align 8
  %255 = getelementptr inbounds %struct.adapter, %struct.adapter* %254, i32 0, i32 16
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load %struct.adapter*, %struct.adapter** %4, align 8
  %260 = getelementptr inbounds %struct.adapter, %struct.adapter* %259, i32 0, i32 16
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @t4_free_smt(i64 %261)
  br label %263

263:                                              ; preds = %258, %253
  %264 = load %struct.adapter*, %struct.adapter** %4, align 8
  %265 = call i32 @t4_free_atid_table(%struct.adapter* %264)
  %266 = load %struct.adapter*, %struct.adapter** %4, align 8
  %267 = getelementptr inbounds %struct.adapter, %struct.adapter* %266, i32 0, i32 15
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %263
  %271 = load %struct.adapter*, %struct.adapter** %4, align 8
  %272 = getelementptr inbounds %struct.adapter, %struct.adapter* %271, i32 0, i32 15
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @vmem_destroy(i64 %273)
  br label %275

275:                                              ; preds = %270, %263
  %276 = load %struct.adapter*, %struct.adapter** %4, align 8
  %277 = getelementptr inbounds %struct.adapter, %struct.adapter* %276, i32 0, i32 14
  %278 = load %struct.port_info*, %struct.port_info** %277, align 8
  %279 = load i32, i32* @M_CXGBE, align 4
  %280 = call i32 @free(%struct.port_info* %278, i32 %279)
  %281 = load %struct.adapter*, %struct.adapter** %4, align 8
  %282 = getelementptr inbounds %struct.adapter, %struct.adapter* %281, i32 0, i32 13
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 4
  %284 = load %struct.port_info*, %struct.port_info** %283, align 8
  %285 = load i32, i32* @M_CXGBE, align 4
  %286 = call i32 @free(%struct.port_info* %284, i32 %285)
  %287 = load %struct.adapter*, %struct.adapter** %4, align 8
  %288 = getelementptr inbounds %struct.adapter, %struct.adapter* %287, i32 0, i32 13
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  %290 = load %struct.port_info*, %struct.port_info** %289, align 8
  %291 = load i32, i32* @M_CXGBE, align 4
  %292 = call i32 @free(%struct.port_info* %290, i32 %291)
  %293 = load %struct.adapter*, %struct.adapter** %4, align 8
  %294 = getelementptr inbounds %struct.adapter, %struct.adapter* %293, i32 0, i32 13
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  %296 = load %struct.port_info*, %struct.port_info** %295, align 8
  %297 = load i32, i32* @M_CXGBE, align 4
  %298 = call i32 @free(%struct.port_info* %296, i32 %297)
  %299 = load %struct.adapter*, %struct.adapter** %4, align 8
  %300 = getelementptr inbounds %struct.adapter, %struct.adapter* %299, i32 0, i32 13
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 1
  %302 = load %struct.port_info*, %struct.port_info** %301, align 8
  %303 = load i32, i32* @M_CXGBE, align 4
  %304 = call i32 @free(%struct.port_info* %302, i32 %303)
  %305 = load %struct.adapter*, %struct.adapter** %4, align 8
  %306 = getelementptr inbounds %struct.adapter, %struct.adapter* %305, i32 0, i32 13
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load %struct.port_info*, %struct.port_info** %307, align 8
  %309 = load i32, i32* @M_CXGBE, align 4
  %310 = call i32 @free(%struct.port_info* %308, i32 %309)
  %311 = load %struct.adapter*, %struct.adapter** %4, align 8
  %312 = getelementptr inbounds %struct.adapter, %struct.adapter* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 5
  %314 = load %struct.port_info*, %struct.port_info** %313, align 8
  %315 = load i32, i32* @M_CXGBE, align 4
  %316 = call i32 @free(%struct.port_info* %314, i32 %315)
  %317 = load %struct.adapter*, %struct.adapter** %4, align 8
  %318 = getelementptr inbounds %struct.adapter, %struct.adapter* %317, i32 0, i32 10
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 4
  %320 = load %struct.port_info*, %struct.port_info** %319, align 8
  %321 = load i32, i32* @M_CXGBE, align 4
  %322 = call i32 @free(%struct.port_info* %320, i32 %321)
  %323 = load %struct.adapter*, %struct.adapter** %4, align 8
  %324 = getelementptr inbounds %struct.adapter, %struct.adapter* %323, i32 0, i32 10
  %325 = call i32 @free_hftid_hash(%struct.TYPE_6__* %324)
  %326 = load %struct.adapter*, %struct.adapter** %4, align 8
  %327 = getelementptr inbounds %struct.adapter, %struct.adapter* %326, i32 0, i32 10
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 3
  %329 = load %struct.port_info*, %struct.port_info** %328, align 8
  %330 = load i32, i32* @M_CXGBE, align 4
  %331 = call i32 @free(%struct.port_info* %329, i32 %330)
  %332 = load %struct.adapter*, %struct.adapter** %4, align 8
  %333 = getelementptr inbounds %struct.adapter, %struct.adapter* %332, i32 0, i32 12
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = load %struct.port_info*, %struct.port_info** %334, align 8
  %336 = load i32, i32* @M_CXGBE, align 4
  %337 = call i32 @free(%struct.port_info* %335, i32 %336)
  %338 = load %struct.adapter*, %struct.adapter** %4, align 8
  %339 = call i32 @t4_destroy_dma_tag(%struct.adapter* %338)
  %340 = load %struct.adapter*, %struct.adapter** %4, align 8
  %341 = getelementptr inbounds %struct.adapter, %struct.adapter* %340, i32 0, i32 11
  %342 = call i32 @callout_drain(i32* %341)
  %343 = load %struct.adapter*, %struct.adapter** %4, align 8
  %344 = getelementptr inbounds %struct.adapter, %struct.adapter* %343, i32 0, i32 10
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 2
  %346 = call i64 @mtx_initialized(i32* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %357

348:                                              ; preds = %275
  %349 = load %struct.adapter*, %struct.adapter** %4, align 8
  %350 = getelementptr inbounds %struct.adapter, %struct.adapter* %349, i32 0, i32 10
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 2
  %352 = call i32 @mtx_destroy(i32* %351)
  %353 = load %struct.adapter*, %struct.adapter** %4, align 8
  %354 = getelementptr inbounds %struct.adapter, %struct.adapter* %353, i32 0, i32 10
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = call i32 @cv_destroy(i32* %355)
  br label %357

357:                                              ; preds = %348, %275
  %358 = load %struct.adapter*, %struct.adapter** %4, align 8
  %359 = getelementptr inbounds %struct.adapter, %struct.adapter* %358, i32 0, i32 10
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = call i64 @mtx_initialized(i32* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %357
  %364 = load %struct.adapter*, %struct.adapter** %4, align 8
  %365 = getelementptr inbounds %struct.adapter, %struct.adapter* %364, i32 0, i32 10
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = call i32 @mtx_destroy(i32* %366)
  br label %368

368:                                              ; preds = %363, %357
  %369 = load %struct.adapter*, %struct.adapter** %4, align 8
  %370 = getelementptr inbounds %struct.adapter, %struct.adapter* %369, i32 0, i32 9
  %371 = call i64 @mtx_initialized(i32* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %368
  %374 = load %struct.adapter*, %struct.adapter** %4, align 8
  %375 = getelementptr inbounds %struct.adapter, %struct.adapter* %374, i32 0, i32 9
  %376 = call i32 @mtx_destroy(i32* %375)
  br label %377

377:                                              ; preds = %373, %368
  %378 = load %struct.adapter*, %struct.adapter** %4, align 8
  %379 = getelementptr inbounds %struct.adapter, %struct.adapter* %378, i32 0, i32 8
  %380 = call i64 @rw_initialized(i32* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %377
  %383 = load %struct.adapter*, %struct.adapter** %4, align 8
  %384 = getelementptr inbounds %struct.adapter, %struct.adapter* %383, i32 0, i32 8
  %385 = call i32 @rw_destroy(i32* %384)
  br label %386

386:                                              ; preds = %382, %377
  store i32 0, i32* %6, align 4
  br label %387

387:                                              ; preds = %407, %386
  %388 = load i32, i32* %6, align 4
  %389 = load i32, i32* @NUM_MEMWIN, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %410

391:                                              ; preds = %387
  %392 = load %struct.adapter*, %struct.adapter** %4, align 8
  %393 = getelementptr inbounds %struct.adapter, %struct.adapter* %392, i32 0, i32 6
  %394 = load %struct.memwin*, %struct.memwin** %393, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.memwin, %struct.memwin* %394, i64 %396
  store %struct.memwin* %397, %struct.memwin** %8, align 8
  %398 = load %struct.memwin*, %struct.memwin** %8, align 8
  %399 = getelementptr inbounds %struct.memwin, %struct.memwin* %398, i32 0, i32 0
  %400 = call i64 @rw_initialized(i32* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %391
  %403 = load %struct.memwin*, %struct.memwin** %8, align 8
  %404 = getelementptr inbounds %struct.memwin, %struct.memwin* %403, i32 0, i32 0
  %405 = call i32 @rw_destroy(i32* %404)
  br label %406

406:                                              ; preds = %402, %391
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %6, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %6, align 4
  br label %387

410:                                              ; preds = %387
  %411 = load %struct.adapter*, %struct.adapter** %4, align 8
  %412 = getelementptr inbounds %struct.adapter, %struct.adapter* %411, i32 0, i32 5
  %413 = call i32 @mtx_destroy(i32* %412)
  %414 = load %struct.adapter*, %struct.adapter** %4, align 8
  %415 = getelementptr inbounds %struct.adapter, %struct.adapter* %414, i32 0, i32 4
  %416 = call i32 @mtx_destroy(i32* %415)
  %417 = load %struct.adapter*, %struct.adapter** %4, align 8
  %418 = getelementptr inbounds %struct.adapter, %struct.adapter* %417, i32 0, i32 3
  %419 = call i32 @mtx_destroy(i32* %418)
  %420 = load %struct.adapter*, %struct.adapter** %4, align 8
  %421 = call i32 @bzero(%struct.adapter* %420, i32 288)
  store i32 0, i32* %2, align 4
  br label %422

422:                                              ; preds = %410, %61
  %423 = load i32, i32* %2, align 4
  ret i32 %423
}

declare dso_local %struct.adapter* @device_get_softc(i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.adapter*, i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @t4_intr_disable(%struct.adapter*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @t4_free_irq(%struct.adapter*, %struct.port_info*) #1

declare dso_local i32 @t4_free_tx_sched(%struct.adapter*) #1

declare dso_local i32 @t4_free_vi(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.port_info*, i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @adapter_full_uninit(%struct.adapter*) #1

declare dso_local i32 @t4_fw_bye(%struct.adapter*, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @t4_free_l2t(i64) #1

declare dso_local i32 @t4_free_smt(i64) #1

declare dso_local i32 @t4_free_atid_table(%struct.adapter*) #1

declare dso_local i32 @vmem_destroy(i64) #1

declare dso_local i32 @free_hftid_hash(%struct.TYPE_6__*) #1

declare dso_local i32 @t4_destroy_dma_tag(%struct.adapter*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i64 @rw_initialized(i32*) #1

declare dso_local i32 @rw_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
