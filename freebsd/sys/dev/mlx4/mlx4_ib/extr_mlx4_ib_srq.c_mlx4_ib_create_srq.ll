; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_srq.c_mlx4_ib_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_srq.c_mlx4_ib_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.ib_pd = type { %struct.TYPE_48__*, i32 }
%struct.TYPE_48__ = type { i32 }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_47__, %struct.TYPE_43__ }
%struct.TYPE_47__ = type { i32, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i64, i64 }
%struct.mlx4_ib_srq = type { i32, %struct.TYPE_39__, %struct.TYPE_41__, %struct.TYPE_38__*, i32, i64, %struct.ib_srq, %struct.TYPE_37__, i64, i64, i32, i32 }
%struct.TYPE_39__ = type { i32, i64* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32, i64, i32, i32, i32 }
%struct.mlx4_wqe_srq_next_seg = type { i32 }
%struct.mlx4_wqe_data_seg = type { i32 }
%struct.mlx4_ib_create_srq = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_34__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@IB_SRQT_XRC = common dso_local global i64 0, align 8
@mlx4_ib_srq_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @mlx4_ib_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_ib_srq*, align 8
  %10 = alloca %struct.mlx4_wqe_srq_next_seg*, align 8
  %11 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx4_ib_create_srq, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %19 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.mlx4_ib_dev* @to_mdev(i32 %21)
  store %struct.mlx4_ib_dev* %22, %struct.mlx4_ib_dev** %8, align 8
  %23 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %26, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %3
  %35 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %38, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34, %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ib_srq* @ERR_PTR(i32 %48)
  store %struct.ib_srq* %49, %struct.ib_srq** %4, align 8
  br label %507

50:                                               ; preds = %34
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.mlx4_ib_srq* @kmalloc(i32 120, i32 %51)
  store %struct.mlx4_ib_srq* %52, %struct.mlx4_ib_srq** %9, align 8
  %53 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %54 = icmp ne %struct.mlx4_ib_srq* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.ib_srq* @ERR_PTR(i32 %57)
  store %struct.ib_srq* %58, %struct.ib_srq** %4, align 8
  br label %507

59:                                               ; preds = %50
  %60 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %60, i32 0, i32 11
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %63, i32 0, i32 10
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  %71 = call i32 @roundup_pow_of_two(i32 %70)
  %72 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 %85, 4
  %87 = add i64 4, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @roundup_pow_of_two(i32 %88)
  %90 = call i32 @max(i64 32, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @ilog2(i32 %91)
  %93 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %94 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 8
  %96 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %103 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %102, i32 0, i32 0
  %104 = load %struct.TYPE_48__*, %struct.TYPE_48__** %103, align 8
  %105 = icmp ne %struct.TYPE_48__* %104, null
  br i1 %105, label %106, label %182

106:                                              ; preds = %59
  %107 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %108 = call i64 @ib_copy_from_udata(%struct.mlx4_ib_create_srq* %18, %struct.ib_udata* %107, i32 8)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %16, align 4
  br label %502

113:                                              ; preds = %106
  %114 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %115 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %114, i32 0, i32 0
  %116 = load %struct.TYPE_48__*, %struct.TYPE_48__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.mlx4_ib_create_srq, %struct.mlx4_ib_create_srq* %18, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call %struct.TYPE_38__* @ib_umem_get(i32 %118, i32 %120, i32 %121, i32 0, i32 0)
  %123 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %124 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %123, i32 0, i32 3
  store %struct.TYPE_38__* %122, %struct.TYPE_38__** %124, align 8
  %125 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %125, i32 0, i32 3
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %126, align 8
  %128 = call i64 @IS_ERR(%struct.TYPE_38__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %113
  %131 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %131, i32 0, i32 3
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %132, align 8
  %134 = call i32 @PTR_ERR(%struct.TYPE_38__* %133)
  store i32 %134, i32* %16, align 4
  br label %502

135:                                              ; preds = %113
  %136 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %137 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %137, align 8
  %139 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %139, i32 0, i32 3
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %140, align 8
  %142 = call i32 @ib_umem_page_count(%struct.TYPE_38__* %141)
  %143 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %143, i32 0, i32 3
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ilog2(i32 %147)
  %149 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %149, i32 0, i32 4
  %151 = call i32 @mlx4_mtt_init(%struct.TYPE_36__* %138, i32 %142, i32 %148, i32* %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %470

155:                                              ; preds = %135
  %156 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %157 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %158 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %157, i32 0, i32 4
  %159 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %159, i32 0, i32 3
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %160, align 8
  %162 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %156, i32* %158, %struct.TYPE_38__* %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  br label %463

166:                                              ; preds = %155
  %167 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %168 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %167, i32 0, i32 0
  %169 = load %struct.TYPE_48__*, %struct.TYPE_48__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @to_mucontext(i32 %171)
  %173 = getelementptr inbounds %struct.mlx4_ib_create_srq, %struct.mlx4_ib_create_srq* %18, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %176 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %175, i32 0, i32 1
  %177 = call i32 @mlx4_ib_db_map_user(i32 %172, i32 %174, %struct.TYPE_39__* %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %166
  br label %463

181:                                              ; preds = %166
  br label %338

182:                                              ; preds = %59
  %183 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %184 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %183, i32 0, i32 0
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %184, align 8
  %186 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %186, i32 0, i32 1
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i32 @mlx4_db_alloc(%struct.TYPE_36__* %185, %struct.TYPE_39__* %187, i32 0, i32 %188)
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %502

193:                                              ; preds = %182
  %194 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  store i64 0, i64* %197, align 8
  %198 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %199 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %198, i32 0, i32 0
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = mul nsw i32 %202, 2
  %204 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %204, i32 0, i32 2
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = call i64 @mlx4_buf_alloc(%struct.TYPE_36__* %200, i32 %201, i32 %203, %struct.TYPE_41__* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %193
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %16, align 4
  br label %489

212:                                              ; preds = %193
  %213 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %214 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %213, i32 0, i32 9
  store i64 0, i64* %214, align 8
  %215 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %216 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 1
  %220 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %221 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %223 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %222, i32 0, i32 8
  store i64 0, i64* %223, align 8
  store i32 0, i32* %17, align 4
  br label %224

224:                                              ; preds = %268, %212
  %225 = load i32, i32* %17, align 4
  %226 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %227 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %225, %229
  br i1 %230, label %231, label %271

231:                                              ; preds = %224
  %232 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %233 = load i32, i32* %17, align 4
  %234 = call %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq* %232, i32 %233)
  store %struct.mlx4_wqe_srq_next_seg* %234, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %235, 1
  %237 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  %242 = and i32 %236, %241
  %243 = call i32 @cpu_to_be16(i32 %242)
  %244 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %245 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %247 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %246, i64 1
  %248 = bitcast %struct.mlx4_wqe_srq_next_seg* %247 to i8*
  %249 = bitcast i8* %248 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %249, %struct.mlx4_wqe_data_seg** %11, align 8
  br label %250

250:                                              ; preds = %264, %231
  %251 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %252 = bitcast %struct.mlx4_wqe_data_seg* %251 to i8*
  %253 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %254 = bitcast %struct.mlx4_wqe_srq_next_seg* %253 to i8*
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr i8, i8* %254, i64 %256
  %258 = icmp ult i8* %252, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %250
  %260 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %261 = call i32 @cpu_to_be32(i32 %260)
  %262 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %263 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 4
  br label %264

264:                                              ; preds = %259
  %265 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %266 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %265, i32 1
  store %struct.mlx4_wqe_data_seg* %266, %struct.mlx4_wqe_data_seg** %11, align 8
  br label %250

267:                                              ; preds = %250
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %17, align 4
  br label %224

271:                                              ; preds = %224
  %272 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %273 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %272, i32 0, i32 0
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %273, align 8
  %275 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %280 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %284 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %283, i32 0, i32 4
  %285 = call i32 @mlx4_mtt_init(%struct.TYPE_36__* %274, i32 %278, i32 %282, i32* %284)
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %271
  br label %470

289:                                              ; preds = %271
  %290 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %291 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %290, i32 0, i32 0
  %292 = load %struct.TYPE_36__*, %struct.TYPE_36__** %291, align 8
  %293 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %294 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %293, i32 0, i32 4
  %295 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %296 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %295, i32 0, i32 2
  %297 = load i32, i32* @GFP_KERNEL, align 4
  %298 = call i32 @mlx4_buf_write_mtt(%struct.TYPE_36__* %292, i32* %294, %struct.TYPE_41__* %296, i32 %297)
  store i32 %298, i32* %16, align 4
  %299 = load i32, i32* %16, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %289
  br label %463

302:                                              ; preds = %289
  %303 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %304 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @GFP_KERNEL, align 4
  %308 = load i32, i32* @__GFP_NOWARN, align 4
  %309 = or i32 %307, %308
  %310 = call i64 @kmalloc_array(i32 %306, i32 4, i32 %309)
  %311 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %312 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %311, i32 0, i32 5
  store i64 %310, i64* %312, align 8
  %313 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %314 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %313, i32 0, i32 5
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %337, label %317

317:                                              ; preds = %302
  %318 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %319 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %318, i32 0, i32 7
  %320 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = mul i64 %322, 4
  %324 = trunc i64 %323 to i32
  %325 = load i32, i32* @GFP_KERNEL, align 4
  %326 = call i64 @__vmalloc(i32 %324, i32 %325, i32 0)
  %327 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %328 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %327, i32 0, i32 5
  store i64 %326, i64* %328, align 8
  %329 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %330 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %329, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %317
  %334 = load i32, i32* @ENOMEM, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %16, align 4
  br label %463

336:                                              ; preds = %317
  br label %337

337:                                              ; preds = %336, %302
  br label %338

338:                                              ; preds = %337, %181
  %339 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %340 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @IB_SRQT_XRC, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %354

344:                                              ; preds = %338
  %345 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %346 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call %struct.TYPE_35__* @to_mcq(i32 %349)
  %351 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  br label %355

354:                                              ; preds = %338
  br label %355

355:                                              ; preds = %354, %344
  %356 = phi i32 [ %353, %344 ], [ 0, %354 ]
  store i32 %356, i32* %12, align 4
  %357 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %358 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @IB_SRQT_XRC, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %355
  %363 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %364 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = call %struct.TYPE_49__* @to_mxrcd(i32 %367)
  %369 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  br label %379

371:                                              ; preds = %355
  %372 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %373 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %372, i32 0, i32 0
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = trunc i64 %377 to i32
  br label %379

379:                                              ; preds = %371, %362
  %380 = phi i32 [ %370, %362 ], [ %378, %371 ]
  store i32 %380, i32* %13, align 4
  %381 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %382 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %381, i32 0, i32 0
  %383 = load %struct.TYPE_36__*, %struct.TYPE_36__** %382, align 8
  %384 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %385 = call %struct.TYPE_34__* @to_mpd(%struct.ib_pd* %384)
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* %13, align 4
  %390 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %391 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %390, i32 0, i32 4
  %392 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %393 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %397 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %396, i32 0, i32 7
  %398 = call i32 @mlx4_srq_alloc(%struct.TYPE_36__* %383, i32 %387, i32 %388, i32 %389, i32* %391, i32 %395, %struct.TYPE_37__* %397)
  store i32 %398, i32* %16, align 4
  %399 = load i32, i32* %16, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %379
  br label %442

402:                                              ; preds = %379
  %403 = load i32, i32* @mlx4_ib_srq_event, align 4
  %404 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %405 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %404, i32 0, i32 7
  %406 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %405, i32 0, i32 3
  store i32 %403, i32* %406, align 4
  %407 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %408 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %407, i32 0, i32 7
  %409 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %412 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %411, i32 0, i32 6
  %413 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %414, i32 0, i32 0
  store i32 %410, i32* %415, align 8
  %416 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %417 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %416, i32 0, i32 0
  %418 = load %struct.TYPE_48__*, %struct.TYPE_48__** %417, align 8
  %419 = icmp ne %struct.TYPE_48__* %418, null
  br i1 %419, label %420, label %431

420:                                              ; preds = %402
  %421 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %422 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %423 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %422, i32 0, i32 7
  %424 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %423, i32 0, i32 2
  %425 = call i64 @ib_copy_to_udata(%struct.ib_udata* %421, i32* %424, i32 4)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %420
  %428 = load i32, i32* @EFAULT, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %16, align 4
  br label %442

430:                                              ; preds = %420
  br label %431

431:                                              ; preds = %430, %402
  %432 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %433 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %432, i32 0, i32 7
  %434 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = sub nsw i32 %435, 1
  %437 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %438 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %438, i32 0, i32 0
  store i32 %436, i32* %439, align 8
  %440 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %441 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %440, i32 0, i32 6
  store %struct.ib_srq* %441, %struct.ib_srq** %4, align 8
  br label %507

442:                                              ; preds = %427, %401
  %443 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %444 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %443, i32 0, i32 0
  %445 = load %struct.TYPE_48__*, %struct.TYPE_48__** %444, align 8
  %446 = icmp ne %struct.TYPE_48__* %445, null
  br i1 %446, label %447, label %457

447:                                              ; preds = %442
  %448 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %449 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %448, i32 0, i32 0
  %450 = load %struct.TYPE_48__*, %struct.TYPE_48__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @to_mucontext(i32 %452)
  %454 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %455 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %454, i32 0, i32 1
  %456 = call i32 @mlx4_ib_db_unmap_user(i32 %453, %struct.TYPE_39__* %455)
  br label %462

457:                                              ; preds = %442
  %458 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %459 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %458, i32 0, i32 5
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @kvfree(i64 %460)
  br label %462

462:                                              ; preds = %457, %447
  br label %463

463:                                              ; preds = %462, %333, %301, %180, %165
  %464 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %465 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %464, i32 0, i32 0
  %466 = load %struct.TYPE_36__*, %struct.TYPE_36__** %465, align 8
  %467 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %468 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %467, i32 0, i32 4
  %469 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_36__* %466, i32* %468)
  br label %470

470:                                              ; preds = %463, %288, %154
  %471 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %472 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %471, i32 0, i32 0
  %473 = load %struct.TYPE_48__*, %struct.TYPE_48__** %472, align 8
  %474 = icmp ne %struct.TYPE_48__* %473, null
  br i1 %474, label %475, label %480

475:                                              ; preds = %470
  %476 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %477 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %476, i32 0, i32 3
  %478 = load %struct.TYPE_38__*, %struct.TYPE_38__** %477, align 8
  %479 = call i32 @ib_umem_release(%struct.TYPE_38__* %478)
  br label %488

480:                                              ; preds = %470
  %481 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %482 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %481, i32 0, i32 0
  %483 = load %struct.TYPE_36__*, %struct.TYPE_36__** %482, align 8
  %484 = load i32, i32* %15, align 4
  %485 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %486 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %485, i32 0, i32 2
  %487 = call i32 @mlx4_buf_free(%struct.TYPE_36__* %483, i32 %484, %struct.TYPE_41__* %486)
  br label %488

488:                                              ; preds = %480, %475
  br label %489

489:                                              ; preds = %488, %209
  %490 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %491 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %490, i32 0, i32 0
  %492 = load %struct.TYPE_48__*, %struct.TYPE_48__** %491, align 8
  %493 = icmp ne %struct.TYPE_48__* %492, null
  br i1 %493, label %501, label %494

494:                                              ; preds = %489
  %495 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %496 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %495, i32 0, i32 0
  %497 = load %struct.TYPE_36__*, %struct.TYPE_36__** %496, align 8
  %498 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %499 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %498, i32 0, i32 1
  %500 = call i32 @mlx4_db_free(%struct.TYPE_36__* %497, %struct.TYPE_39__* %499)
  br label %501

501:                                              ; preds = %494, %489
  br label %502

502:                                              ; preds = %501, %192, %130, %110
  %503 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %504 = call i32 @kfree(%struct.mlx4_ib_srq* %503)
  %505 = load i32, i32* %16, align 4
  %506 = call %struct.ib_srq* @ERR_PTR(i32 %505)
  store %struct.ib_srq* %506, %struct.ib_srq** %4, align 8
  br label %507

507:                                              ; preds = %502, %431, %55, %46
  %508 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  ret %struct.ib_srq* %508
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_srq* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mlx4_ib_create_srq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.TYPE_38__* @ib_umem_get(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_38__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.TYPE_36__*, i32, i32, i32*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_ib_db_map_user(i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @to_mucontext(i32) #1

declare dso_local i32 @mlx4_db_alloc(%struct.TYPE_36__*, %struct.TYPE_39__*, i32, i32) #1

declare dso_local i64 @mlx4_buf_alloc(%struct.TYPE_36__*, i32, i32, %struct.TYPE_41__*, i32) #1

declare dso_local %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_buf_write_mtt(%struct.TYPE_36__*, i32*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @__vmalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_35__* @to_mcq(i32) #1

declare dso_local %struct.TYPE_49__* @to_mxrcd(i32) #1

declare dso_local i32 @mlx4_srq_alloc(%struct.TYPE_36__*, i32, i32, i32, i32*, i32, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_34__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mlx4_ib_db_unmap_user(i32, %struct.TYPE_39__*) #1

declare dso_local i32 @kvfree(i64) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_buf_free(%struct.TYPE_36__*, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @mlx4_db_free(%struct.TYPE_36__*, %struct.TYPE_39__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
