; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32 }
%struct.ib_recv_wr = type { i32, i32, i64, %struct.ib_recv_wr* }
%struct.mlx5_ib_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wqe_data_seg = type { i64, i8*, i64 }
%struct.mlx5_rwqe_sig = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %10 = alloca %struct.mlx5_rwqe_sig*, align 8
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.mlx5_core_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mlx5_ib_qp* %19, %struct.mlx5_ib_qp** %8, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mlx5_ib_dev* @to_mdev(i32 %22)
  store %struct.mlx5_ib_dev* %23, %struct.mlx5_ib_dev** %11, align 8
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 0
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, align 8
  store %struct.mlx5_core_dev* %26, %struct.mlx5_core_dev** %12, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_QPT_GSI, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %37 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %38 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  %39 = call i32 @mlx5_ib_gsi_post_recv(%struct.ib_qp* %36, %struct.ib_recv_wr* %37, %struct.ib_recv_wr** %38)
  store i32 %39, i32* %4, align 4
  br label %231

40:                                               ; preds = %3
  %41 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %47 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  %54 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %55 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %54, %struct.ib_recv_wr** %55, align 8
  store i32 0, i32* %15, align 4
  br label %202

56:                                               ; preds = %40
  %57 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %60, %65
  store i32 %66, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %195, %56
  %68 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %69 = icmp ne %struct.ib_recv_wr* %68, null
  br i1 %69, label %70, label %201

70:                                               ; preds = %67
  %71 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %71, i32 0, i32 0
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @mlx5_wq_overflow(%struct.TYPE_6__* %72, i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  %83 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %84 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %83, %struct.ib_recv_wr** %84, align 8
  br label %202

85:                                               ; preds = %70
  %86 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %88, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %101 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %100, %struct.ib_recv_wr** %101, align 8
  br label %202

102:                                              ; preds = %85
  %103 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call %struct.mlx5_wqe_data_seg* @get_recv_wqe(%struct.mlx5_ib_qp* %103, i32 %104)
  store %struct.mlx5_wqe_data_seg* %105, %struct.mlx5_wqe_data_seg** %9, align 8
  %106 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %112 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %111, i32 1
  store %struct.mlx5_wqe_data_seg* %112, %struct.mlx5_wqe_data_seg** %9, align 8
  br label %113

113:                                              ; preds = %110, %102
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %121, i64 %123
  %125 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = call i32 @set_data_ptr_seg(%struct.mlx5_wqe_data_seg* %124, i64 %130)
  br label %132

132:                                              ; preds = %120
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %114

135:                                              ; preds = %114
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %138 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %135
  %143 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %143, i64 %145
  %147 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @MLX5_INVALID_LKEY, align 4
  %149 = call i8* @cpu_to_be32(i32 %148)
  %150 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %150, i64 %152
  %154 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %153, i32 0, i32 1
  store i8* %149, i8** %154, align 8
  %155 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %155, i64 %157
  %159 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %142, %135
  %161 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %162 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %160
  %166 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %167 = bitcast %struct.mlx5_wqe_data_seg* %166 to %struct.mlx5_rwqe_sig*
  store %struct.mlx5_rwqe_sig* %167, %struct.mlx5_rwqe_sig** %10, align 8
  %168 = load %struct.mlx5_rwqe_sig*, %struct.mlx5_rwqe_sig** %10, align 8
  %169 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %170 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  %174 = shl i32 %173, 2
  %175 = call i32 @set_sig_seg(%struct.mlx5_rwqe_sig* %168, i32 %174)
  br label %176

176:                                              ; preds = %165, %160
  %177 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %181 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %179, i32* %186, align 4
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  %189 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %190 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, 1
  %194 = and i32 %188, %193
  store i32 %194, i32* %16, align 4
  br label %195

195:                                              ; preds = %176
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  %198 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %199 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %198, i32 0, i32 3
  %200 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %199, align 8
  store %struct.ib_recv_wr* %200, %struct.ib_recv_wr** %6, align 8
  br label %67

201:                                              ; preds = %67
  br label %202

202:                                              ; preds = %201, %97, %80, %51
  %203 = load i32, i32* %15, align 4
  %204 = call i64 @likely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %202
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %209 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, %207
  store i32 %212, i32* %210, align 8
  %213 = call i32 (...) @wmb()
  %214 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %215 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, 65535
  %219 = call i8* @cpu_to_be32(i32 %218)
  %220 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %221 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i8**, i8*** %222, align 8
  store i8* %219, i8** %223, align 8
  br label %224

224:                                              ; preds = %206, %202
  %225 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %226 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load i64, i64* %13, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  %230 = load i32, i32* %14, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %224, %35
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_gsi_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mlx5_wq_overflow(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.mlx5_wqe_data_seg* @get_recv_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @set_data_ptr_seg(%struct.mlx5_wqe_data_seg*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @set_sig_seg(%struct.mlx5_rwqe_sig*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
