; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i64, i32, i64, i64, i32, i32, %struct.TYPE_19__, i64, i64*, i32*, i64*, %struct.TYPE_17__, %struct.TYPE_18__*, %struct.qlnx_fastpath*, i32*, i32, i32**, i32**, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i64 }
%struct.qlnx_fastpath = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@QLNX_MAX_HW_FUNCS = common dso_local global i32 0, align 4
@M_QLNXBUF = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @qlnx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_release(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnx_fastpath*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 21
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = call i32 @QL_DPRINT2(%struct.TYPE_20__* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QLNX_MAX_HW_FUNCS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 20
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 20
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @M_QLNXBUF, align 4
  %33 = call i32 @free(i32* %31, i32 %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 20
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %24, %15
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 19
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 19
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @M_QLNXBUF, align 4
  %58 = call i32 @free(i32* %56, i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 19
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %49, %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %11

69:                                               ; preds = %11
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 18
  %78 = call i32 @callout_drain(i32* %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %87 = call i32 @qlnx_slowpath_stop(%struct.TYPE_20__* %86)
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 14
  %97 = call i32 @ecore_hw_remove(%struct.TYPE_17__* %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %100 = call i32 @qlnx_del_cdev(%struct.TYPE_20__* %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 17
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 17
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ether_ifdetach(i32* %108)
  br label %110

110:                                              ; preds = %105, %98
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %112 = call i32 @qlnx_free_tx_dma_tag(%struct.TYPE_20__* %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %114 = call i32 @qlnx_free_rx_dma_tag(%struct.TYPE_20__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %116 = call i32 @qlnx_free_parent_dma_tag(%struct.TYPE_20__* %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %118 = call i64 @qlnx_vf_device(%struct.TYPE_20__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %122 = call i32 @qlnx_destroy_error_recovery_taskqueue(%struct.TYPE_20__* %121)
  br label %123

123:                                              ; preds = %120, %110
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %199, %123
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %202

130:                                              ; preds = %124
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 16
  %133 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %133, i64 %135
  store %struct.qlnx_fastpath* %136, %struct.qlnx_fastpath** %5, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 15
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %130
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 15
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 15
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @bus_teardown_intr(i32 %147, i64 %155, i64 %163)
  br label %165

165:                                              ; preds = %146, %130
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 15
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %165
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @SYS_RES_IRQ, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 15
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 15
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @bus_release_resource(i32 %176, i32 %177, i32 %185, i64 %193)
  br label %195

195:                                              ; preds = %175, %165
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %197 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %198 = call i32 @qlnx_free_tx_br(%struct.TYPE_20__* %196, %struct.qlnx_fastpath* %197)
  br label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %4, align 4
  br label %124

202:                                              ; preds = %124
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %204 = call i32 @qlnx_destroy_fp_taskqueues(%struct.TYPE_20__* %203)
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %266, %202
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 14
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %206, %210
  br i1 %211, label %212, label %269

212:                                              ; preds = %205
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 13
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %212
  %222 = load i32, i32* %3, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 11
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 13
  %232 = load i64*, i64** %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @bus_teardown_intr(i32 %222, i64 %229, i64 %236)
  br label %238

238:                                              ; preds = %221, %212
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 11
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %238
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* @SYS_RES_IRQ, align 4
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 12
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 11
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @bus_release_resource(i32 %248, i32 %249, i32 %256, i64 %263)
  br label %265

265:                                              ; preds = %247, %238
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %4, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %4, align 4
  br label %205

269:                                              ; preds = %205
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %271 = call i32 @qlnx_destroy_sp_taskqueues(%struct.TYPE_20__* %270)
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 10
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @pci_release_msi(i32 %277)
  br label %279

279:                                              ; preds = %276, %269
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 9
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 8
  %288 = call i32 @mtx_destroy(i32* %287)
  br label %289

289:                                              ; preds = %285, %279
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* @SYS_RES_MEMORY, align 4
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @bus_release_resource(i32 %295, i32 %296, i32 %299, i64 %302)
  br label %304

304:                                              ; preds = %294, %289
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %324

309:                                              ; preds = %304
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %309
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* @SYS_RES_MEMORY, align 4
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @bus_release_resource(i32 %315, i32 %316, i32 %319, i64 %322)
  br label %324

324:                                              ; preds = %314, %309, %304
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %339

329:                                              ; preds = %324
  %330 = load i32, i32* %3, align 4
  %331 = load i32, i32* @SYS_RES_MEMORY, align 4
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @bus_release_resource(i32 %330, i32 %331, i32 %334, i64 %337)
  br label %339

339:                                              ; preds = %329, %324
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %341 = call i32 @QL_DPRINT2(%struct.TYPE_20__* %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @qlnx_slowpath_stop(%struct.TYPE_20__*) #1

declare dso_local i32 @ecore_hw_remove(%struct.TYPE_17__*) #1

declare dso_local i32 @qlnx_del_cdev(%struct.TYPE_20__*) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @qlnx_free_tx_dma_tag(%struct.TYPE_20__*) #1

declare dso_local i32 @qlnx_free_rx_dma_tag(%struct.TYPE_20__*) #1

declare dso_local i32 @qlnx_free_parent_dma_tag(%struct.TYPE_20__*) #1

declare dso_local i64 @qlnx_vf_device(%struct.TYPE_20__*) #1

declare dso_local i32 @qlnx_destroy_error_recovery_taskqueue(%struct.TYPE_20__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @qlnx_free_tx_br(%struct.TYPE_20__*, %struct.qlnx_fastpath*) #1

declare dso_local i32 @qlnx_destroy_fp_taskqueues(%struct.TYPE_20__*) #1

declare dso_local i32 @qlnx_destroy_sp_taskqueues(%struct.TYPE_20__*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
