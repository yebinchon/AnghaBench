; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32*, %struct.TYPE_22__*, %struct.mlx4_uar }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.mlx4_uar = type { i32 }
%struct.mlx4_ib_cq = type { i32, %struct.TYPE_24__, %struct.ib_cq, %struct.TYPE_23__, i32, %struct.TYPE_19__, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_24__ = type { i32, i64* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64*, i64* }
%struct.mlx4_ib_create_cq = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.mlx4_uar }

@EINVAL = common dso_local global i32 0, align 4
@CQ_CREATE_FLAGS_SUPPORTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IB_CQ_FLAGS_TIMESTAMP_COMPLETION = common dso_local global i32 0, align 4
@mlx4_ib_cq_comp = common dso_local global i32 0, align 4
@mlx4_ib_cq_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @mlx4_ib_create_cq(%struct.ib_device* %0, %struct.ib_cq_init_attr* %1, %struct.ib_ucontext* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.ib_cq_init_attr*, align 8
  %8 = alloca %struct.ib_ucontext*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_ib_dev*, align 8
  %13 = alloca %struct.mlx4_ib_cq*, align 8
  %14 = alloca %struct.mlx4_uar*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_ib_create_cq, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.ib_cq_init_attr* %1, %struct.ib_cq_init_attr** %7, align 8
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %17 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %7, align 8
  %18 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %7, align 8
  %21 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %23)
  store %struct.mlx4_ib_dev* %24, %struct.mlx4_ib_dev** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %36, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %28, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27, %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ib_cq* @ERR_PTR(i32 %38)
  store %struct.ib_cq* %39, %struct.ib_cq** %5, align 8
  br label %304

40:                                               ; preds = %27
  %41 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CQ_CREATE_FLAGS_SUPPORTED, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.ib_cq* @ERR_PTR(i32 %50)
  store %struct.ib_cq* %51, %struct.ib_cq** %5, align 8
  br label %304

52:                                               ; preds = %40
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.mlx4_ib_cq* @kmalloc(i32 104, i32 %53)
  store %struct.mlx4_ib_cq* %54, %struct.mlx4_ib_cq** %13, align 8
  %55 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %56 = icmp ne %struct.mlx4_ib_cq* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.ib_cq* @ERR_PTR(i32 %59)
  store %struct.ib_cq* %60, %struct.ib_cq** %5, align 8
  br label %304

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @roundup_pow_of_two(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %70, i32 0, i32 11
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %73, i32 0, i32 10
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %76, i32 0, i32 9
  store i32* null, i32** %77, align 8
  %78 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %78, i32 0, i32 8
  store i32* null, i32** %79, align 8
  %80 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %85, i32 0, i32 7
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %88, i32 0, i32 6
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %92 = icmp ne %struct.ib_ucontext* %91, null
  br i1 %92, label %93, label %129

93:                                               ; preds = %61
  %94 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %95 = call i64 @ib_copy_from_udata(%struct.mlx4_ib_create_cq* %16, %struct.ib_udata* %94, i32 8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @EFAULT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %15, align 4
  br label %299

100:                                              ; preds = %93
  %101 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %102 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %103 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %103, i32 0, i32 3
  %105 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.mlx4_ib_create_cq, %struct.mlx4_ib_create_cq* %16, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev* %101, %struct.ib_ucontext* %102, %struct.TYPE_23__* %104, i32* %106, i32 %108, i32 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %299

114:                                              ; preds = %100
  %115 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %116 = call %struct.TYPE_21__* @to_mucontext(%struct.ib_ucontext* %115)
  %117 = getelementptr inbounds %struct.mlx4_ib_create_cq, %struct.mlx4_ib_create_cq* %16, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %119, i32 0, i32 1
  %121 = call i32 @mlx4_ib_db_map_user(%struct.TYPE_21__* %116, i32 %118, %struct.TYPE_24__* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %263

125:                                              ; preds = %114
  %126 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %127 = call %struct.TYPE_21__* @to_mucontext(%struct.ib_ucontext* %126)
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  store %struct.mlx4_uar* %128, %struct.mlx4_uar** %14, align 8
  br label %175

129:                                              ; preds = %61
  %130 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %131, align 8
  %133 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %134 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %133, i32 0, i32 1
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i32 @mlx4_db_alloc(%struct.TYPE_22__* %132, %struct.TYPE_24__* %134, i32 1, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %299

140:                                              ; preds = %129
  %141 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %142 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %146 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  store i64* %144, i64** %147, align 8
  %148 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %149 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %154 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  store i64* %152, i64** %155, align 8
  %156 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  store i64 0, i64* %159, align 8
  %160 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 3
  %163 = load i64*, i64** %162, align 8
  store i64 0, i64* %163, align 8
  %164 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %165 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %166 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %165, i32 0, i32 3
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev* %164, %struct.TYPE_23__* %166, i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %140
  br label %288

172:                                              ; preds = %140
  %173 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %174 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %173, i32 0, i32 2
  store %struct.mlx4_uar* %174, %struct.mlx4_uar** %14, align 8
  br label %175

175:                                              ; preds = %172, %125
  %176 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %192

180:                                              ; preds = %175
  %181 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %182 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %186 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = srem i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %183, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %180, %175
  %193 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %194 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %193, i32 0, i32 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %198 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load %struct.mlx4_uar*, %struct.mlx4_uar** %14, align 8
  %201 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %205, i32 0, i32 5
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %209 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IB_CQ_FLAGS_TIMESTAMP_COMPLETION, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i32 @mlx4_cq_alloc(%struct.TYPE_22__* %195, i32 %196, i32* %199, %struct.mlx4_uar* %200, i32 %204, %struct.TYPE_19__* %206, i32 %207, i32 0, i32 %216)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %192
  br label %253

221:                                              ; preds = %192
  %222 = load i32, i32* @mlx4_ib_cq_comp, align 4
  %223 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %224 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 2
  store i32 %222, i32* %225, align 8
  %226 = load i32, i32* @mlx4_ib_cq_event, align 4
  %227 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %228 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 4
  %230 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %231 = icmp ne %struct.ib_ucontext* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %221
  %233 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %234 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %235 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = call i64 @ib_copy_to_udata(%struct.ib_udata* %233, i32* %236, i32 4)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load i32, i32* @EFAULT, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %15, align 4
  br label %246

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242, %221
  %244 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %245 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %244, i32 0, i32 2
  store %struct.ib_cq* %245, %struct.ib_cq** %5, align 8
  br label %304

246:                                              ; preds = %239
  %247 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %248 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %247, i32 0, i32 1
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %248, align 8
  %250 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %250, i32 0, i32 5
  %252 = call i32 @mlx4_cq_free(%struct.TYPE_22__* %249, %struct.TYPE_19__* %251)
  br label %253

253:                                              ; preds = %246, %220
  %254 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %255 = icmp ne %struct.ib_ucontext* %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %253
  %257 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %258 = call %struct.TYPE_21__* @to_mucontext(%struct.ib_ucontext* %257)
  %259 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %260 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %259, i32 0, i32 1
  %261 = call i32 @mlx4_ib_db_unmap_user(%struct.TYPE_21__* %258, %struct.TYPE_24__* %260)
  br label %262

262:                                              ; preds = %256, %253
  br label %263

263:                                              ; preds = %262, %124
  %264 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %265 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %264, i32 0, i32 1
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %265, align 8
  %267 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %268 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 0
  %270 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_22__* %266, i32* %269)
  %271 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %272 = icmp ne %struct.ib_ucontext* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %263
  %274 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %275 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @ib_umem_release(i32 %276)
  br label %287

278:                                              ; preds = %263
  %279 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %280 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %281 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %280, i32 0, i32 3
  %282 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %283 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %279, %struct.TYPE_23__* %281, i32 %285)
  br label %287

287:                                              ; preds = %278, %273
  br label %288

288:                                              ; preds = %287, %171
  %289 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %290 = icmp ne %struct.ib_ucontext* %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %288
  %292 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %293 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %292, i32 0, i32 1
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %293, align 8
  %295 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %296 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %295, i32 0, i32 1
  %297 = call i32 @mlx4_db_free(%struct.TYPE_22__* %294, %struct.TYPE_24__* %296)
  br label %298

298:                                              ; preds = %291, %288
  br label %299

299:                                              ; preds = %298, %139, %113, %97
  %300 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %301 = call i32 @kfree(%struct.mlx4_ib_cq* %300)
  %302 = load i32, i32* %15, align 4
  %303 = call %struct.ib_cq* @ERR_PTR(i32 %302)
  store %struct.ib_cq* %303, %struct.ib_cq** %5, align 8
  br label %304

304:                                              ; preds = %299, %243, %57, %48, %36
  %305 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  ret %struct.ib_cq* %305
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_cq* @kmalloc(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mlx4_ib_create_cq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev*, %struct.ib_ucontext*, %struct.TYPE_23__*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_ib_db_map_user(%struct.TYPE_21__*, i32, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_21__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @mlx4_db_alloc(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @mlx4_cq_alloc(%struct.TYPE_22__*, i32, i32*, %struct.mlx4_uar*, i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mlx4_cq_free(%struct.TYPE_22__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mlx4_ib_db_unmap_user(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @mlx4_db_free(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
