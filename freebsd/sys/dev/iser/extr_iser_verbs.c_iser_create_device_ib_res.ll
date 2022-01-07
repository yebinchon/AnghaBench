; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_create_device_ib_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_create_device_ib_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_device = type { i32, %struct.iser_comp*, %struct.TYPE_9__*, i32, %struct.ib_device*, %struct.TYPE_9__* }
%struct.iser_comp = type { %struct.TYPE_9__*, i64, i32, %struct.iser_device* }
%struct.ib_device = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.ib_cq_init_attr = type { i32, i32 }

@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"device %s doesn't support Fastreg, can't register memory\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@M_ISER_VERBS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ISER_MAX_CQ_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"using %d CQs, device %s supports %d vectors max_cqe %d\00", align 1
@IB_PD_UNSAFE_GLOBAL_RKEY = common dso_local global i32 0, align 4
@iser_cq_callback = common dso_local global i32 0, align 4
@iser_cq_event_callback = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@iser_cq_tasklet_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"iser_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"iser taskq\00", align 1
@iser_event_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to allocate an IB resource\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_device*)* @iser_create_device_ib_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_create_device_ib_res(%struct.iser_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_device*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iser_comp*, align 8
  %8 = alloca %struct.ib_cq_init_attr, align 4
  %9 = alloca %struct.iser_comp*, align 8
  %10 = alloca %struct.iser_comp*, align 8
  store %struct.iser_device* %0, %struct.iser_device** %3, align 8
  %11 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %12 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %11, i32 0, i32 4
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  store %struct.ib_device* %13, %struct.ib_device** %4, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %23 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %22, i32 0, i32 4
  %24 = load %struct.ib_device*, %struct.ib_device** %23, align 8
  %25 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @ISER_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 1, i32* %2, align 4
  br label %262

28:                                               ; preds = %1
  %29 = load i32, i32* @mp_ncpus, align 4
  %30 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %31 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %30, i32 0, i32 4
  %32 = load %struct.ib_device*, %struct.ib_device** %31, align 8
  %33 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @min(i32 %29, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %38 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %40 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 32
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @M_ISER_VERBS, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.iser_comp* @malloc(i32 %44, i32 %45, i32 %48)
  %50 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %51 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %50, i32 0, i32 1
  store %struct.iser_comp* %49, %struct.iser_comp** %51, align 8
  %52 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %53 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %52, i32 0, i32 1
  %54 = load %struct.iser_comp*, %struct.iser_comp** %53, align 8
  %55 = icmp ne %struct.iser_comp* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %28
  br label %260

57:                                               ; preds = %28
  %58 = load i32, i32* @ISER_MAX_CQ_LEN, align 4
  %59 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %60 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @min(i32 %58, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %66 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %69 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %68, i32 0, i32 4
  %70 = load %struct.ib_device*, %struct.ib_device** %69, align 8
  %71 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %74 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %73, i32 0, i32 4
  %75 = load %struct.ib_device*, %struct.ib_device** %74, align 8
  %76 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ISER_DBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %72, i32 %77, i32 %78)
  %80 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %81 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %80, i32 0, i32 4
  %82 = load %struct.ib_device*, %struct.ib_device** %81, align 8
  %83 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %84 = call %struct.TYPE_9__* @ib_alloc_pd(%struct.ib_device* %82, i32 %83)
  %85 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %86 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %85, i32 0, i32 2
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %86, align 8
  %87 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %88 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i64 @IS_ERR(%struct.TYPE_9__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %57
  br label %254

93:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %163, %93
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %97 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %166

100:                                              ; preds = %94
  %101 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %102 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %101, i32 0, i32 1
  %103 = load %struct.iser_comp*, %struct.iser_comp** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %103, i64 %105
  store %struct.iser_comp* %106, %struct.iser_comp** %7, align 8
  %107 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %8, i32 0, i32 0
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %8, i32 0, i32 1
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %109, align 4
  %111 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %112 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %113 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %112, i32 0, i32 3
  store %struct.iser_device* %111, %struct.iser_device** %113, align 8
  %114 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %115 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %114, i32 0, i32 4
  %116 = load %struct.ib_device*, %struct.ib_device** %115, align 8
  %117 = load i32, i32* @iser_cq_callback, align 4
  %118 = load i32, i32* @iser_cq_event_callback, align 4
  %119 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %120 = bitcast %struct.iser_comp* %119 to i8*
  %121 = call %struct.TYPE_9__* @ib_create_cq(%struct.ib_device* %116, i32 %117, i32 %118, i8* %120, %struct.ib_cq_init_attr* %8)
  %122 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %123 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %122, i32 0, i32 0
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %123, align 8
  %124 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %125 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = call i64 @IS_ERR(%struct.TYPE_9__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %100
  %130 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %131 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %130, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %131, align 8
  br label %222

132:                                              ; preds = %100
  %133 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %134 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %137 = call i64 @ib_req_notify_cq(%struct.TYPE_9__* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %222

140:                                              ; preds = %132
  %141 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %142 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %141, i32 0, i32 2
  %143 = load i32, i32* @iser_cq_tasklet_fn, align 4
  %144 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %145 = call i32 @TASK_INIT(i32* %142, i32 0, i32 %143, %struct.iser_comp* %144)
  %146 = load i32, i32* @M_NOWAIT, align 4
  %147 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %148 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %149 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %148, i32 0, i32 1
  %150 = call i64 @taskqueue_create_fast(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147, i64* %149)
  %151 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %152 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %154 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %140
  br label %194

158:                                              ; preds = %140
  %159 = load %struct.iser_comp*, %struct.iser_comp** %7, align 8
  %160 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %159, i32 0, i32 1
  %161 = load i32, i32* @PI_NET, align 4
  %162 = call i32 @taskqueue_start_threads(i64* %160, i32 1, i32 %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %94

166:                                              ; preds = %94
  %167 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %168 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %167, i32 0, i32 2
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %173 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %172, i32 0, i32 5
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %173, align 8
  %174 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %175 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %174, i32 0, i32 5
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = call i64 @IS_ERR(%struct.TYPE_9__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %166
  br label %194

180:                                              ; preds = %166
  %181 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %182 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %181, i32 0, i32 3
  %183 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %184 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %183, i32 0, i32 4
  %185 = load %struct.ib_device*, %struct.ib_device** %184, align 8
  %186 = load i32, i32* @iser_event_handler, align 4
  %187 = call i32 @INIT_IB_EVENT_HANDLER(i32* %182, %struct.ib_device* %185, i32 %186)
  %188 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %189 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %188, i32 0, i32 3
  %190 = call i64 @ib_register_event_handler(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %194

193:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %262

194:                                              ; preds = %192, %179, %157
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %218, %194
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %198 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %221

201:                                              ; preds = %195
  %202 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %203 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %202, i32 0, i32 1
  %204 = load %struct.iser_comp*, %struct.iser_comp** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %204, i64 %206
  store %struct.iser_comp* %207, %struct.iser_comp** %9, align 8
  %208 = load %struct.iser_comp*, %struct.iser_comp** %9, align 8
  %209 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %201
  %213 = load %struct.iser_comp*, %struct.iser_comp** %9, align 8
  %214 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @taskqueue_free(i64 %215)
  br label %217

217:                                              ; preds = %212, %201
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %5, align 4
  br label %195

221:                                              ; preds = %195
  br label %222

222:                                              ; preds = %221, %139, %129
  store i32 0, i32* %5, align 4
  br label %223

223:                                              ; preds = %246, %222
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %226 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %223
  %230 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %231 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %230, i32 0, i32 1
  %232 = load %struct.iser_comp*, %struct.iser_comp** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %232, i64 %234
  store %struct.iser_comp* %235, %struct.iser_comp** %10, align 8
  %236 = load %struct.iser_comp*, %struct.iser_comp** %10, align 8
  %237 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %236, i32 0, i32 0
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = icmp ne %struct.TYPE_9__* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %229
  %241 = load %struct.iser_comp*, %struct.iser_comp** %10, align 8
  %242 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %241, i32 0, i32 0
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = call i32 @ib_destroy_cq(%struct.TYPE_9__* %243)
  br label %245

245:                                              ; preds = %240, %229
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %5, align 4
  br label %223

249:                                              ; preds = %223
  %250 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %251 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %250, i32 0, i32 2
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = call i32 @ib_dealloc_pd(%struct.TYPE_9__* %252)
  br label %254

254:                                              ; preds = %249, %92
  %255 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %256 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %255, i32 0, i32 1
  %257 = load %struct.iser_comp*, %struct.iser_comp** %256, align 8
  %258 = load i32, i32* @M_ISER_VERBS, align 4
  %259 = call i32 @free(%struct.iser_comp* %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %56
  %261 = call i32 (i8*, ...) @ISER_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %193, %21
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @ISER_ERR(i8*, ...) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local %struct.iser_comp* @malloc(i32, i32, i32) #1

declare dso_local i32 @ISER_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @ib_alloc_pd(%struct.ib_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @ib_create_cq(%struct.ib_device*, i32, i32, i8*, %struct.ib_cq_init_attr*) #1

declare dso_local i64 @ib_req_notify_cq(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.iser_comp*) #1

declare dso_local i64 @taskqueue_create_fast(i8*, i32, i32, i64*) #1

declare dso_local i32 @taskqueue_start_threads(i64*, i32, i32, i8*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i64 @ib_register_event_handler(i32*) #1

declare dso_local i32 @taskqueue_free(i64) #1

declare dso_local i32 @ib_destroy_cq(%struct.TYPE_9__*) #1

declare dso_local i32 @ib_dealloc_pd(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.iser_comp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
