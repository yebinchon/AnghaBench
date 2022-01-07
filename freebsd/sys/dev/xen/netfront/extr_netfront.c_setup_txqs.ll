; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_setup_txqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_setup_txqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.netfront_txq* }
%struct.netfront_txq = type { i32, %struct.TYPE_2__, i32, i8*, i32, i32, i32, i32, i32, i32, i8**, i8**, %struct.netfront_info* }
%struct.TYPE_2__ = type { %struct.netfront_txq* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GRANT_REF_INVALID = common dso_local global i8* null, align 8
@XN_QUEUE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xntx_%u\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"netfront transmit lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@NET_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to allocate tx grant refs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to grant tx ring\0A\00", align 1
@xn_txq_tq_deferred = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s txq %d\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to start tx taskq %d\0A\00", align 1
@xn_intr = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"xen_intr_alloc_and_bind_local_port failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netfront_info*, i64)* @setup_txqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_txqs(i32 %0, %struct.netfront_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netfront_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.netfront_txq*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.netfront_info* %1, %struct.netfront_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = mul i64 80, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.netfront_txq* @malloc(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %22 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %21, i32 0, i32 0
  store %struct.netfront_txq* %20, %struct.netfront_txq** %22, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %193, %3
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %196

28:                                               ; preds = %23
  %29 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %30 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %29, i32 0, i32 0
  %31 = load %struct.netfront_txq*, %struct.netfront_txq** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %31, i64 %33
  store %struct.netfront_txq* %34, %struct.netfront_txq** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %37 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %39 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %40 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %39, i32 0, i32 12
  store %struct.netfront_info* %38, %struct.netfront_info** %40, align 8
  %41 = load i8*, i8** @GRANT_REF_INVALID, align 8
  %42 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %43 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %45 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.netfront_txq* null, %struct.netfront_txq** %46, align 8
  %47 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %48 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XN_QUEUE_NAME_LEN, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snprintf(i32 %49, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %54 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %53, i32 0, i32 9
  %55 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %56 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MTX_DEF, align 4
  %59 = call i32 @mtx_init(i32* %54, i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %82, %28
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NET_TX_RING_SIZE, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, 1
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %70 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %69, i32 0, i32 10
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load i8*, i8** @GRANT_REF_INVALID, align 8
  %76 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %77 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %76, i32 0, i32 11
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %64
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %60

85:                                               ; preds = %60
  %86 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %87 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %86, i32 0, i32 10
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* @NET_TX_RING_SIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* null, i8** %91, align 8
  %92 = load i32, i32* @NET_TX_RING_SIZE, align 4
  %93 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %94 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %93, i32 0, i32 2
  %95 = call i64 @gnttab_alloc_grant_references(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @ENOMEM, align 4
  store i32 %100, i32* %10, align 4
  br label %227

101:                                              ; preds = %85
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = load i32, i32* @M_WAITOK, align 4
  %105 = load i32, i32* @M_ZERO, align 4
  %106 = or i32 %104, %105
  %107 = call %struct.netfront_txq* @malloc(i32 %102, i32 %103, i32 %106)
  %108 = bitcast %struct.netfront_txq* %107 to i32*
  store i32* %108, i32** %11, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @SHARED_RING_INIT(i32* %109)
  %111 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %112 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %111, i32 0, i32 1
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %112, i32* %113, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @virt_to_mfn(i32* %117)
  %119 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %120 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %119, i32 0, i32 3
  %121 = call i32 @xenbus_grant_ring(i32 %116, i32 %118, i8** %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %101
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %216

127:                                              ; preds = %101
  %128 = load i32, i32* @NET_TX_RING_SIZE, align 4
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = load i32, i32* @M_WAITOK, align 4
  %131 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %132 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %131, i32 0, i32 9
  %133 = call i32 @buf_ring_alloc(i32 %128, i32 %129, i32 %130, i32* %132)
  %134 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %135 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %137 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %136, i32 0, i32 8
  %138 = load i32, i32* @xn_txq_tq_deferred, align 4
  %139 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %140 = call i32 @TASK_INIT(i32* %137, i32 0, i32 %138, %struct.netfront_txq* %139)
  %141 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %142 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @M_WAITOK, align 4
  %145 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %146 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %147 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %146, i32 0, i32 4
  %148 = call i32 @taskqueue_create(i32 %143, i32 %144, i32 %145, i32* %147)
  %149 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %150 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %152 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %151, i32 0, i32 4
  %153 = load i32, i32* @PI_NET, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @device_get_nameunit(i32 %154)
  %156 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %157 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @taskqueue_start_threads(i32* %152, i32 1, i32 %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %127
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %165 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @device_printf(i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %202

168:                                              ; preds = %127
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @xenbus_get_otherend_id(i32 %170)
  %172 = load i32, i32* @xn_intr, align 4
  %173 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %174 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %173, i32 0, i32 0
  %175 = load %struct.netfront_txq*, %struct.netfront_txq** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %175, i64 %177
  %179 = load i32, i32* @INTR_TYPE_NET, align 4
  %180 = load i32, i32* @INTR_MPSAFE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @INTR_ENTROPY, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %185 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %184, i32 0, i32 6
  %186 = call i32 @xen_intr_alloc_and_bind_local_port(i32 %169, i32 %171, i32* null, i32 %172, %struct.netfront_txq* %178, i32 %183, i32* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %168
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %197

192:                                              ; preds = %168
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %23

196:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %256

197:                                              ; preds = %189
  %198 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %199 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @taskqueue_drain_all(i32 %200)
  br label %202

202:                                              ; preds = %197, %162
  %203 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %204 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @M_DEVBUF, align 4
  %207 = call i32 @buf_ring_free(i32 %205, i32 %206)
  %208 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %209 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @taskqueue_free(i32 %210)
  %212 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %213 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @gnttab_end_foreign_access(i8* %214, i32* null)
  br label %216

216:                                              ; preds = %202, %124
  %217 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %218 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @gnttab_free_grant_references(i32 %219)
  %221 = load %struct.netfront_txq*, %struct.netfront_txq** %12, align 8
  %222 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load %struct.netfront_txq*, %struct.netfront_txq** %223, align 8
  %225 = load i32, i32* @M_DEVBUF, align 4
  %226 = call i32 @free(%struct.netfront_txq* %224, i32 %225)
  br label %227

227:                                              ; preds = %216, %97
  br label %228

228:                                              ; preds = %246, %227
  %229 = load i32, i32* %8, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %228
  %232 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %233 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %232, i32 0, i32 0
  %234 = load %struct.netfront_txq*, %struct.netfront_txq** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %234, i64 %236
  %238 = call i32 @disconnect_txq(%struct.netfront_txq* %237)
  %239 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %240 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %239, i32 0, i32 0
  %241 = load %struct.netfront_txq*, %struct.netfront_txq** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %241, i64 %243
  %245 = call i32 @destroy_txq(%struct.netfront_txq* %244)
  br label %246

246:                                              ; preds = %231
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %8, align 4
  br label %228

249:                                              ; preds = %228
  %250 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %251 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %250, i32 0, i32 0
  %252 = load %struct.netfront_txq*, %struct.netfront_txq** %251, align 8
  %253 = load i32, i32* @M_DEVBUF, align 4
  %254 = call i32 @free(%struct.netfront_txq* %252, i32 %253)
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %249, %196
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.netfront_txq* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i64 @gnttab_alloc_grant_references(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @SHARED_RING_INIT(i32*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @xenbus_grant_ring(i32, i32, i8**) #1

declare dso_local i32 @virt_to_mfn(i32*) #1

declare dso_local i32 @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.netfront_txq*) #1

declare dso_local i32 @taskqueue_create(i32, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @xen_intr_alloc_and_bind_local_port(i32, i32, i32*, i32, %struct.netfront_txq*, i32, i32*) #1

declare dso_local i32 @xenbus_get_otherend_id(i32) #1

declare dso_local i32 @taskqueue_drain_all(i32) #1

declare dso_local i32 @buf_ring_free(i32, i32) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @gnttab_end_foreign_access(i8*, i32*) #1

declare dso_local i32 @gnttab_free_grant_references(i32) #1

declare dso_local i32 @free(%struct.netfront_txq*, i32) #1

declare dso_local i32 @disconnect_txq(%struct.netfront_txq*) #1

declare dso_local i32 @destroy_txq(%struct.netfront_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
