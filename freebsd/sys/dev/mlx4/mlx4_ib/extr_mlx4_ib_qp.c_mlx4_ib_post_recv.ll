; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_mlx4_ib_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_mlx4_ib_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, i32, %struct.TYPE_14__*, %struct.ib_recv_wr* }
%struct.TYPE_14__ = type { i32 }
%struct.mlx4_ib_qp = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_wqe_data_seg = type { i64, i8*, i8* }
%struct.mlx4_ib_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_GSI = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mlx4_ib_qp*, align 8
  %8 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %17 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %16)
  store %struct.mlx4_ib_qp* %17, %struct.mlx4_ib_qp** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mlx4_ib_dev* @to_mdev(i32 %20)
  store %struct.mlx4_ib_dev* %21, %struct.mlx4_ib_dev** %15, align 8
  %22 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %45 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %44, %struct.ib_recv_wr** %45, align 8
  store i32 0, i32* %11, align 4
  br label %216

46:                                               ; preds = %3
  %47 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %50, %55
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %209, %46
  %58 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %59 = icmp ne %struct.ib_recv_wr* %58, null
  br i1 %59, label %60, label %215

60:                                               ; preds = %57
  %61 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %61, i32 0, i32 1
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @mlx4_wq_overflow(%struct.TYPE_13__* %62, i32 %63, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %74 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %73, %struct.ib_recv_wr** %74, align 8
  br label %216

75:                                               ; preds = %60
  %76 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %77 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %75
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  %90 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %91 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %90, %struct.ib_recv_wr** %91, align 8
  br label %216

92:                                               ; preds = %75
  %93 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call %struct.mlx4_wqe_data_seg* @get_recv_wqe(%struct.mlx4_ib_qp* %93, i32 %94)
  store %struct.mlx4_wqe_data_seg* %95, %struct.mlx4_wqe_data_seg** %8, align 8
  %96 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %100 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MLX4_IB_QPT_PROXY_GSI, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %98, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %146

106:                                              ; preds = %92
  %107 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %108 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %110, i32 0, i32 3
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %119 = call i32 @ib_dma_sync_single_for_device(i32 %109, i32 %117, i32 4, i32 %118)
  %120 = call i8* @cpu_to_be32(i32 4)
  %121 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %122 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %124 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %123, i32 0, i32 2
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %130 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %131, i32 0, i32 3
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @cpu_to_be64(i32 %138)
  %140 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %141 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %143 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %142, i32 1
  store %struct.mlx4_wqe_data_seg* %143, %struct.mlx4_wqe_data_seg** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %106, %92
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %165, %146
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %150 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %147
  %154 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %154, i64 %156
  %158 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %159 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %158, i32 0, i32 2
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %162
  %164 = call i32 @__set_data_seg(%struct.mlx4_wqe_data_seg* %157, %struct.TYPE_14__* %163)
  br label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %147

168:                                              ; preds = %147
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %168
  %173 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %173, i64 %175
  %177 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %176, i32 0, i32 2
  store i8* null, i8** %177, align 8
  %178 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %179 = call i8* @cpu_to_be32(i32 %178)
  %180 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %180, i64 %182
  %184 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %183, i32 0, i32 1
  store i8* %179, i8** %184, align 8
  %185 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %185, i64 %187
  %189 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %172, %168
  %191 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %192 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %193, i32* %200, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  %203 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %204 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 1
  %208 = and i32 %202, %207
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %190
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  %212 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %213 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %212, i32 0, i32 3
  %214 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %213, align 8
  store %struct.ib_recv_wr* %214, %struct.ib_recv_wr** %5, align 8
  br label %57

215:                                              ; preds = %57
  br label %216

216:                                              ; preds = %215, %87, %70, %41
  %217 = load i32, i32* %11, align 4
  %218 = call i64 @likely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %216
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %223 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %221
  store i32 %226, i32* %224, align 4
  %227 = call i32 (...) @wmb()
  %228 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %229 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 65535
  %233 = call i8* @cpu_to_be32(i32 %232)
  %234 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %235 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i8**, i8*** %236, align 8
  store i8* %233, i8** %237, align 8
  br label %238

238:                                              ; preds = %220, %216
  %239 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 3
  %242 = load i64, i64* %9, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* %241, i64 %242)
  %244 = load i32, i32* %10, align 4
  ret i32 %244
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mlx4_wq_overflow(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx4_wqe_data_seg* @get_recv_wqe(%struct.mlx4_ib_qp*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @__set_data_seg(%struct.mlx4_wqe_data_seg*, %struct.TYPE_14__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
