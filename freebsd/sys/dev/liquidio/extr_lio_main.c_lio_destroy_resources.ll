; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_destroy_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_destroy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_6__, i32**, %struct.TYPE_5__, i32**, i32*, i32, i32*, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.2*)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32* }

@LIO_DRV_INVALID_APP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Device state is now %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"There were pending requests\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"IQ had pending instructions\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"OQ had pending packets\0A\00", align 1
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@LIO_MAX_POSSIBLE_OUTPUT_QUEUES = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@LIO_MAX_POSSIBLE_INSTR_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_destroy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_destroy_resources(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 11
  %7 = call i32 @atomic_load_acq_int(i32* %6)
  switch i32 %7, label %357 [
    i32 129, label %8
    i32 141, label %8
    i32 138, label %21
    i32 142, label %21
    i32 134, label %24
    i32 136, label %53
    i32 135, label %198
    i32 139, label %198
    i32 130, label %223
    i32 137, label %260
    i32 133, label %284
    i32 128, label %321
    i32 140, label %324
    i32 131, label %327
    i32 132, label %351
    i32 143, label %356
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 11
  %11 = call i32 @atomic_store_rel_int(i32* %10, i32 135)
  %12 = load i32, i32* @LIO_DRV_INVALID_APP, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 11
  %18 = call i32 @lio_get_state_string(i32* %17)
  %19 = call i32 @lio_dev_dbg(%struct.octeon_device* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @lio_sleep_timeout(i32 100)
  br label %21

21:                                               ; preds = %1, %1, %8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = call i32 @lio_remove_consoles(%struct.octeon_device* %22)
  br label %24

24:                                               ; preds = %1, %21
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = call i32 @lio_wait_for_pending_requests(%struct.octeon_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = call i32 @lio_dev_err(%struct.octeon_device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %33 = call i32 @lio_wait_for_instr_fetch(%struct.octeon_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = call i32 @lio_dev_err(%struct.octeon_device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32 (%struct.octeon_device.2*)*, i32 (%struct.octeon_device.2*)** %41, align 8
  %43 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %44 = bitcast %struct.octeon_device* %43 to %struct.octeon_device.2*
  %45 = call i32 %42(%struct.octeon_device.2* %44)
  %46 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %47 = call i32 @lio_wait_for_oq_pkts(%struct.octeon_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %51 = call i32 @lio_dev_err(%struct.octeon_device* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %38
  br label %53

53:                                               ; preds = %1, %52
  %54 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %56, align 8
  %58 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %59 = bitcast %struct.octeon_device* %58 to %struct.octeon_device.1*
  %60 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %61 = call i32 %57(%struct.octeon_device.1* %59, i32 %60)
  %62 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %197

66:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %152, %66
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %155

74:                                               ; preds = %67
  %75 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %74
  %85 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %88, i32 0, i32 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %96, i32 0, i32 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @bus_teardown_intr(i32 %87, i32* %95, i32* %103)
  %105 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %105, i32 0, i32 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %84, %74
  %113 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %113, i32 0, i32 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %151

122:                                              ; preds = %112
  %123 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SYS_RES_IRQ, align 4
  %127 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %127, i32 0, i32 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %136 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %135, i32 0, i32 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @bus_release_resource(i32 %125, i32 %126, i32 %134, i32* %142)
  %144 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %145 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %144, i32 0, i32 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %122, %112
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %67

155:                                              ; preds = %67
  %156 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %162 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %168 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %167, i32 0, i32 7
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @bus_teardown_intr(i32 %163, i32* %166, i32* %169)
  %171 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %172 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %171, i32 0, i32 7
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %160, %155
  %174 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %175 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %180 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SYS_RES_IRQ, align 4
  %183 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %184 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %187 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @bus_release_resource(i32 %181, i32 %182, i32 %185, i32* %188)
  %190 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %191 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %190, i32 0, i32 5
  store i32* null, i32** %191, align 8
  br label %192

192:                                              ; preds = %178, %173
  %193 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %194 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @pci_release_msi(i32 %195)
  br label %197

197:                                              ; preds = %192, %53
  br label %198

198:                                              ; preds = %1, %1, %197
  %199 = call i32 @lio_mdelay(i32 100)
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %219, %198
  %201 = load i32, i32* %3, align 4
  %202 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %203 = call i32 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device* %202)
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %200
  %206 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %207 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @BIT_ULL(i32 %210)
  %212 = and i32 %209, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %205
  br label %219

215:                                              ; preds = %205
  %216 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @lio_delete_droq(%struct.octeon_device* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %214
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %200

222:                                              ; preds = %200
  br label %223

223:                                              ; preds = %1, %222
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %254, %223
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* @LIO_MAX_POSSIBLE_OUTPUT_QUEUES, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %257

228:                                              ; preds = %224
  %229 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %230 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %229, i32 0, i32 4
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %253

237:                                              ; preds = %228
  %238 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %239 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %238, i32 0, i32 4
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %3, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* @M_DEVBUF, align 4
  %246 = call i32 @free(i32* %244, i32 %245)
  %247 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %248 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %247, i32 0, i32 4
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  store i32* null, i32** %252, align 8
  br label %253

253:                                              ; preds = %237, %228
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %3, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %3, align 4
  br label %224

257:                                              ; preds = %224
  %258 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %259 = call i32 @lio_delete_response_list(%struct.octeon_device* %258)
  br label %260

260:                                              ; preds = %1, %257
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %280, %260
  %262 = load i32, i32* %3, align 4
  %263 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %264 = call i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device* %263)
  %265 = icmp slt i32 %262, %264
  br i1 %265, label %266, label %283

266:                                              ; preds = %261
  %267 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %268 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %3, align 4
  %272 = call i32 @BIT_ULL(i32 %271)
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %266
  br label %280

276:                                              ; preds = %266
  %277 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %278 = load i32, i32* %3, align 4
  %279 = call i32 @lio_delete_instr_queue(%struct.octeon_device* %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %275
  %281 = load i32, i32* %3, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %3, align 4
  br label %261

283:                                              ; preds = %261
  br label %284

284:                                              ; preds = %1, %283
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %315, %284
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* @LIO_MAX_POSSIBLE_INSTR_QUEUES, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %318

289:                                              ; preds = %285
  %290 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %291 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %290, i32 0, i32 2
  %292 = load i32**, i32*** %291, align 8
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %314

298:                                              ; preds = %289
  %299 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %300 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %299, i32 0, i32 2
  %301 = load i32**, i32*** %300, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %301, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* @M_DEVBUF, align 4
  %307 = call i32 @free(i32* %305, i32 %306)
  %308 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %309 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %308, i32 0, i32 2
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  store i32* null, i32** %313, align 8
  br label %314

314:                                              ; preds = %298, %289
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %3, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %3, align 4
  br label %285

318:                                              ; preds = %285
  %319 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %320 = call i32 @lio_free_ioq_vector(%struct.octeon_device* %319)
  br label %321

321:                                              ; preds = %1, %318
  %322 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %323 = call i32 @lio_free_sc_buffer_pool(%struct.octeon_device* %322)
  br label %324

324:                                              ; preds = %1, %321
  %325 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %326 = call i32 @lio_delete_dispatch_list(%struct.octeon_device* %325)
  br label %327

327:                                              ; preds = %1, %324
  %328 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %329 = call i32 @lio_deregister_device(%struct.octeon_device* %328)
  store i32 %329, i32* %4, align 4
  %330 = call i32 (...) @fw_type_is_none()
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %334 = call i32 @lio_pci_flr(%struct.octeon_device* %333)
  br label %335

335:                                              ; preds = %332, %327
  %336 = load i32, i32* %4, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %346, label %338

338:                                              ; preds = %335
  %339 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %340 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.0*)** %341, align 8
  %343 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %344 = bitcast %struct.octeon_device* %343 to %struct.octeon_device.0*
  %345 = call i32 %342(%struct.octeon_device.0* %344)
  br label %346

346:                                              ; preds = %338, %335
  %347 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %348 = call i32 @lio_unmap_pci_barx(%struct.octeon_device* %347, i32 0)
  %349 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %350 = call i32 @lio_unmap_pci_barx(%struct.octeon_device* %349, i32 1)
  br label %351

351:                                              ; preds = %1, %346
  %352 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @pci_disable_busmaster(i32 %354)
  br label %356

356:                                              ; preds = %1, %351
  br label %357

357:                                              ; preds = %1, %356
  ret void
}

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @lio_get_state_string(i32*) #1

declare dso_local i32 @lio_sleep_timeout(i32) #1

declare dso_local i32 @lio_remove_consoles(%struct.octeon_device*) #1

declare dso_local i32 @lio_wait_for_pending_requests(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_wait_for_instr_fetch(%struct.octeon_device*) #1

declare dso_local i32 @lio_wait_for_oq_pkts(%struct.octeon_device*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @lio_mdelay(i32) #1

declare dso_local i32 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @lio_delete_droq(%struct.octeon_device*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @lio_delete_response_list(%struct.octeon_device*) #1

declare dso_local i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @lio_delete_instr_queue(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_free_ioq_vector(%struct.octeon_device*) #1

declare dso_local i32 @lio_free_sc_buffer_pool(%struct.octeon_device*) #1

declare dso_local i32 @lio_delete_dispatch_list(%struct.octeon_device*) #1

declare dso_local i32 @lio_deregister_device(%struct.octeon_device*) #1

declare dso_local i32 @fw_type_is_none(...) #1

declare dso_local i32 @lio_pci_flr(%struct.octeon_device*) #1

declare dso_local i32 @lio_unmap_pci_barx(%struct.octeon_device*, i32) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
