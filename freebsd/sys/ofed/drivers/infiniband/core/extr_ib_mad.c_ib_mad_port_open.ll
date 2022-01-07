; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_port_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad_port_private = type { i32, i32*, i32, i32, i32, i32, %struct.ib_device*, i32, i32 }

@IB_MGMT_MAD_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@OPA_MGMT_MAD_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No memory for ib_mad_port_private\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mad_sendq_size = common dso_local global i32 0, align 4
@mad_recvq_size = common dso_local global i32 0, align 4
@IB_POLL_WORKQUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't create ib_mad CQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't create ib_mad PD\0A\00", align 1
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ib_mad%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ib_mad_port_list_lock = common dso_local global i32 0, align 4
@ib_mad_port_list = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Couldn't start port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32)* @ib_mad_port_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_port_open(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_port_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @rdma_max_mad_size(%struct.ib_device* %12, i32 %13)
  %15 = load i64, i64* @IB_MGMT_MAD_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %235

23:                                               ; preds = %2
  %24 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @rdma_cap_opa_mad(%struct.ib_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @rdma_max_mad_size(%struct.ib_device* %29, i32 %30)
  %32 = load i64, i64* @OPA_MGMT_MAD_SIZE, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %235

42:                                               ; preds = %34
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ib_mad_port_private* @kzalloc(i32 48, i32 %43)
  store %struct.ib_mad_port_private* %44, %struct.ib_mad_port_private** %8, align 8
  %45 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %46 = icmp ne %struct.ib_mad_port_private* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %49 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %235

53:                                               ; preds = %42
  %54 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %55 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %56 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %55, i32 0, i32 6
  store %struct.ib_device* %54, %struct.ib_device** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %59 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %61 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %60, i32 0, i32 8
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %64 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %63, i32 0, i32 7
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %67 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %68 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @init_mad_qp(%struct.ib_mad_port_private* %66, i32* %70)
  %72 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %73 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %74 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i32 @init_mad_qp(%struct.ib_mad_port_private* %72, i32* %76)
  %78 = load i32, i32* @mad_sendq_size, align 4
  %79 = load i32, i32* @mad_recvq_size, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @rdma_cap_ib_smi(%struct.ib_device* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %53
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %53
  %90 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %91 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %90, i32 0, i32 6
  %92 = load %struct.ib_device*, %struct.ib_device** %91, align 8
  %93 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @IB_POLL_WORKQUEUE, align 4
  %96 = call i32 @ib_alloc_cq(%struct.ib_device* %92, %struct.ib_mad_port_private* %93, i32 %94, i32 0, i32 %95)
  %97 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %98 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %100 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %89
  %105 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %106 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %109 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR(i32 %110)
  store i32 %111, i32* %6, align 4
  br label %231

112:                                              ; preds = %89
  %113 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %114 = call i32 @ib_alloc_pd(%struct.ib_device* %113, i32 0)
  %115 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %116 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %118 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %112
  %123 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %124 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %127 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @PTR_ERR(i32 %128)
  store i32 %129, i32* %6, align 4
  br label %216

130:                                              ; preds = %112
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %135 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* @IB_QPT_SMI, align 4
  %139 = call i32 @create_mad_qp(i32* %137, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %211

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %130
  %145 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %146 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* @IB_QPT_GSI, align 4
  %150 = call i32 @create_mad_qp(i32* %148, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %205

154:                                              ; preds = %144
  %155 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @snprintf(i8* %155, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %159 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %160 = call i32 @alloc_ordered_workqueue(i8* %158, i32 %159)
  %161 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %162 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %164 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %154
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %199

170:                                              ; preds = %154
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @spin_lock_irqsave(i32* @ib_mad_port_list_lock, i64 %171)
  %173 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %174 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %173, i32 0, i32 5
  %175 = call i32 @list_add_tail(i32* %174, i32* @ib_mad_port_list)
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* @ib_mad_port_list_lock, i64 %176)
  %178 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %179 = call i32 @ib_mad_port_start(%struct.ib_mad_port_private* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  %183 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %184 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %183, i32 0, i32 0
  %185 = call i32 @dev_err(i32* %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %187

186:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %235

187:                                              ; preds = %182
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @spin_lock_irqsave(i32* @ib_mad_port_list_lock, i64 %188)
  %190 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %191 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %190, i32 0, i32 5
  %192 = call i32 @list_del_init(i32* %191)
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* @ib_mad_port_list_lock, i64 %193)
  %195 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %196 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @destroy_workqueue(i32 %197)
  br label %199

199:                                              ; preds = %187, %167
  %200 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %201 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = call i32 @destroy_mad_qp(i32* %203)
  br label %205

205:                                              ; preds = %199, %153
  %206 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %207 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = call i32 @destroy_mad_qp(i32* %209)
  br label %211

211:                                              ; preds = %205, %142
  %212 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %213 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ib_dealloc_pd(i32 %214)
  br label %216

216:                                              ; preds = %211, %122
  %217 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %218 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ib_free_cq(i32 %219)
  %221 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %222 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = call i32 @cleanup_recv_queue(i32* %224)
  %226 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %227 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = call i32 @cleanup_recv_queue(i32* %229)
  br label %231

231:                                              ; preds = %216, %104
  %232 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %233 = call i32 @kfree(%struct.ib_mad_port_private* %232)
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %231, %186, %47, %39, %20
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @rdma_max_mad_size(%struct.ib_device*, i32) #1

declare dso_local i64 @rdma_cap_opa_mad(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_mad_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_mad_qp(%struct.ib_mad_port_private*, i32*) #1

declare dso_local i32 @rdma_cap_ib_smi(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_alloc_cq(%struct.ib_device*, %struct.ib_mad_port_private*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*, i32) #1

declare dso_local i32 @create_mad_qp(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_mad_port_start(%struct.ib_mad_port_private*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @destroy_mad_qp(i32*) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @ib_free_cq(i32) #1

declare dso_local i32 @cleanup_recv_queue(i32*) #1

declare dso_local i32 @kfree(%struct.ib_mad_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
