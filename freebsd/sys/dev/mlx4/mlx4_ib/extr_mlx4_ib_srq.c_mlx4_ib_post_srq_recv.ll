; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_srq.c_mlx4_ib_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_srq.c_mlx4_ib_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_8__*, i32, %struct.ib_recv_wr* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mlx4_ib_srq = type { i64, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32* }
%struct.TYPE_10__ = type { i8** }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_wqe_srq_next_seg = type { i32 }
%struct.mlx4_wqe_data_seg = type { i64, i8*, i8* }
%struct.mlx4_ib_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mlx4_ib_srq*, align 8
  %8 = alloca %struct.mlx4_wqe_srq_next_seg*, align 8
  %9 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %15 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %16 = call %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq* %15)
  store %struct.mlx4_ib_srq* %16, %struct.mlx4_ib_srq** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %18 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx4_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx4_ib_dev* %20, %struct.mlx4_ib_dev** %14, align 8
  %21 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %21, i32 0, i32 3
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %39 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %38, %struct.ib_recv_wr** %39, align 8
  store i32 0, i32* %12, align 4
  br label %206

40:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %180, %40
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %43 = icmp ne %struct.ib_recv_wr* %42, null
  br i1 %43, label %44, label %186

44:                                               ; preds = %41
  %45 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %47, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %60 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %59, %struct.ib_recv_wr** %60, align 8
  br label %186

61:                                               ; preds = %44
  %62 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %66 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %76 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %75, %struct.ib_recv_wr** %76, align 8
  br label %186

77:                                               ; preds = %61
  %78 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %79 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %80, i32* %87, align 4
  %88 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %89 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq* %88, i64 %91)
  store %struct.mlx4_wqe_srq_next_seg* %92, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %93 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %94 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @be16_to_cpu(i32 %95)
  %97 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %100 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %99, i64 1
  %101 = bitcast %struct.mlx4_wqe_srq_next_seg* %100 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %101, %struct.mlx4_wqe_data_seg** %9, align 8
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %151, %77
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %105 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %154

108:                                              ; preds = %102
  %109 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %110 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %118, i64 %120
  %122 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %121, i32 0, i32 2
  store i8* %117, i8** %122, align 8
  %123 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %124 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @cpu_to_be32(i32 %130)
  %132 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %132, i64 %134
  %136 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %135, i32 0, i32 1
  store i8* %131, i8** %136, align 8
  %137 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %138 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @cpu_to_be64(i32 %144)
  %146 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %146, i64 %148
  %150 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %149, i32 0, i32 0
  store i64 %145, i64* %150, align 8
  br label %151

151:                                              ; preds = %108
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %102

154:                                              ; preds = %102
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %154
  %162 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %162, i64 %164
  %166 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %165, i32 0, i32 2
  store i8* null, i8** %166, align 8
  %167 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %168 = call i8* @cpu_to_be32(i32 %167)
  %169 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %169, i64 %171
  %173 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %172, i32 0, i32 1
  store i8* %168, i8** %173, align 8
  %174 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %174, i64 %176
  %178 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %161, %154
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  %183 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %184 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %183, i32 0, i32 3
  %185 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %184, align 8
  store %struct.ib_recv_wr* %185, %struct.ib_recv_wr** %5, align 8
  br label %41

186:                                              ; preds = %72, %56, %41
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @likely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = call i32 (...) @wmb()
  %197 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %198 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @cpu_to_be32(i32 %199)
  %201 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i8**, i8*** %203, align 8
  store i8* %200, i8** %204, align 8
  br label %205

205:                                              ; preds = %190, %186
  br label %206

206:                                              ; preds = %205, %35
  %207 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %208 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %207, i32 0, i32 3
  %209 = load i64, i64* %10, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load i32, i32* %11, align 4
  ret i32 %211
}

declare dso_local %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq*, i64) #1

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
