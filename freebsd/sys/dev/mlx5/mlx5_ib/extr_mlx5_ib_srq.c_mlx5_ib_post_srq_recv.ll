; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_srq.c_mlx5_ib_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_srq.c_mlx5_ib_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_4__*, i32, %struct.ib_recv_wr* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mlx5_ib_srq = type { i64, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx5_wqe_srq_next_seg = type { i32 }
%struct.mlx5_wqe_data_seg = type { i64, i8*, i8* }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mlx5_ib_srq*, align 8
  %8 = alloca %struct.mlx5_wqe_srq_next_seg*, align 8
  %9 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_core_dev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %17 = call %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq* %16)
  store %struct.mlx5_ib_srq* %17, %struct.mlx5_ib_srq** %7, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %19 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mlx5_ib_dev* @to_mdev(i32 %20)
  store %struct.mlx5_ib_dev* %21, %struct.mlx5_ib_dev** %10, align 8
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %22, i32 0, i32 0
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %23, align 8
  store %struct.mlx5_core_dev* %24, %struct.mlx5_core_dev** %11, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %25, i32 0, i32 3
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %38 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %37, %struct.ib_recv_wr** %38, align 8
  br label %205

39:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %179, %39
  %41 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %42 = icmp ne %struct.ib_recv_wr* %41, null
  br i1 %42, label %43, label %185

43:                                               ; preds = %40
  %44 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %45 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %59 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %58, %struct.ib_recv_wr** %59, align 8
  br label %185

60:                                               ; preds = %43
  %61 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %75 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %74, %struct.ib_recv_wr** %75, align 8
  br label %185

76:                                               ; preds = %60
  %77 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %78 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %86, align 4
  %87 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %88 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call %struct.mlx5_wqe_srq_next_seg* @get_wqe(%struct.mlx5_ib_srq* %87, i64 %90)
  store %struct.mlx5_wqe_srq_next_seg* %91, %struct.mlx5_wqe_srq_next_seg** %8, align 8
  %92 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %8, align 8
  %93 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be16_to_cpu(i32 %94)
  %96 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %8, align 8
  %99 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %98, i64 1
  %100 = bitcast %struct.mlx5_wqe_srq_next_seg* %99 to %struct.mlx5_wqe_data_seg*
  store %struct.mlx5_wqe_data_seg* %100, %struct.mlx5_wqe_data_seg** %9, align 8
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %150, %76
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %104 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %153

107:                                              ; preds = %101
  %108 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %109 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @cpu_to_be32(i32 %115)
  %117 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %117, i64 %119
  %121 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %120, i32 0, i32 2
  store i8* %116, i8** %121, align 8
  %122 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %123 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %131, i64 %133
  %135 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %134, i32 0, i32 1
  store i8* %130, i8** %135, align 8
  %136 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %137 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @cpu_to_be64(i32 %143)
  %145 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %145, i64 %147
  %149 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %148, i32 0, i32 0
  store i64 %144, i64* %149, align 8
  br label %150

150:                                              ; preds = %107
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %101

153:                                              ; preds = %101
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %156 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %153
  %161 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %161, i64 %163
  %165 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %164, i32 0, i32 2
  store i8* null, i8** %165, align 8
  %166 = load i32, i32* @MLX5_INVALID_LKEY, align 4
  %167 = call i8* @cpu_to_be32(i32 %166)
  %168 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %168, i64 %170
  %172 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %171, i32 0, i32 1
  store i8* %167, i8** %172, align 8
  %173 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %173, i64 %175
  %177 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %176, i32 0, i32 0
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %160, %153
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  %182 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %183 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %182, i32 0, i32 3
  %184 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %183, align 8
  store %struct.ib_recv_wr* %184, %struct.ib_recv_wr** %5, align 8
  br label %40

185:                                              ; preds = %71, %55, %40
  %186 = load i32, i32* %14, align 4
  %187 = call i64 @likely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %192 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = call i32 (...) @wmb()
  %196 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %197 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @cpu_to_be32(i32 %198)
  %200 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %201 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  store i8* %199, i8** %203, align 8
  br label %204

204:                                              ; preds = %189, %185
  br label %205

205:                                              ; preds = %204, %34
  %206 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %207 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %206, i32 0, i32 3
  %208 = load i64, i64* %12, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* %207, i64 %208)
  %210 = load i32, i32* %13, align 4
  ret i32 %210
}

declare dso_local %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx5_wqe_srq_next_seg* @get_wqe(%struct.mlx5_ib_srq*, i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
