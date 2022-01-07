; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_cq_init_attr = type { i32, i64 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_create_cq = type { i32, i32, i32, i32, i32, i32 }
%struct.mthca_cq = type { %struct.ib_cq, i32*, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, %struct.ib_ucontext*, %struct.ib_udata*)* @mthca_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_cq* @mthca_create_cq(%struct.ib_device* %0, %struct.ib_cq_init_attr* %1, %struct.ib_ucontext* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.ib_cq_init_attr*, align 8
  %8 = alloca %struct.ib_ucontext*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mthca_create_cq, align 4
  %12 = alloca %struct.mthca_cq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.ib_cq_init_attr* %1, %struct.ib_cq_init_attr** %7, align 8
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %15 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %7, align 8
  %16 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %7, align 8
  %19 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_cq* @ERR_PTR(i32 %24)
  store %struct.ib_cq* %25, %struct.ib_cq** %5, align 8
  br label %217

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %32 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29, %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ib_cq* @ERR_PTR(i32 %39)
  store %struct.ib_cq* %40, %struct.ib_cq** %5, align 8
  br label %217

41:                                               ; preds = %29
  %42 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %43 = icmp ne %struct.ib_ucontext* %42, null
  br i1 %43, label %44, label %91

44:                                               ; preds = %41
  %45 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %46 = call i64 @ib_copy_from_udata(%struct.mthca_create_cq* %11, %struct.ib_udata* %45, i32 24)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.ib_cq* @ERR_PTR(i32 %50)
  store %struct.ib_cq* %51, %struct.ib_cq** %5, align 8
  br label %217

52:                                               ; preds = %44
  %53 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %54 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %53)
  %55 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %56 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %55)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %59 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %58)
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mthca_map_user_db(%struct.TYPE_19__* %54, i32* %57, i32 %61, i32 %63, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load i32, i32* %14, align 4
  %71 = call %struct.ib_cq* @ERR_PTR(i32 %70)
  store %struct.ib_cq* %71, %struct.ib_cq** %5, align 8
  br label %217

72:                                               ; preds = %52
  %73 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %74 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %73)
  %75 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %76 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %75)
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %79 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %78)
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mthca_map_user_db(%struct.TYPE_19__* %74, i32* %77, i32 %81, i32 %83, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %198

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %41
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.mthca_cq* @kmalloc(i32 32, i32 %92)
  store %struct.mthca_cq* %93, %struct.mthca_cq** %12, align 8
  %94 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %95 = icmp ne %struct.mthca_cq* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %181

99:                                               ; preds = %91
  %100 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %101 = icmp ne %struct.ib_ucontext* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %106 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 4
  %110 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %113 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %117 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %102, %99
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %124, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %119

127:                                              ; preds = %119
  %128 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %129 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %128)
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %132 = icmp ne %struct.ib_ucontext* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %135 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %134)
  br label %137

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %133
  %138 = phi %struct.TYPE_18__* [ %135, %133 ], [ null, %136 ]
  %139 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %140 = icmp ne %struct.ib_ucontext* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  br label %150

144:                                              ; preds = %137
  %145 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %146 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %145)
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  br label %150

150:                                              ; preds = %144, %141
  %151 = phi i32 [ %143, %141 ], [ %149, %144 ]
  %152 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %153 = call i32 @mthca_init_cq(%struct.TYPE_19__* %129, i32 %130, %struct.TYPE_18__* %138, i32 %151, %struct.mthca_cq* %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %178

157:                                              ; preds = %150
  %158 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %159 = icmp ne %struct.ib_ucontext* %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %162 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %163 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %162, i32 0, i32 2
  %164 = call i64 @ib_copy_to_udata(%struct.ib_udata* %161, i32* %163, i32 4)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %168 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %167)
  %169 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %170 = call i32 @mthca_free_cq(%struct.TYPE_19__* %168, %struct.mthca_cq* %169)
  %171 = load i32, i32* @EFAULT, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %14, align 4
  br label %178

173:                                              ; preds = %160, %157
  %174 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %175 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %174, i32 0, i32 1
  store i32* null, i32** %175, align 8
  %176 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %177 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %176, i32 0, i32 0
  store %struct.ib_cq* %177, %struct.ib_cq** %5, align 8
  br label %217

178:                                              ; preds = %166, %156
  %179 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %180 = call i32 @kfree(%struct.mthca_cq* %179)
  br label %181

181:                                              ; preds = %178, %96
  %182 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %183 = icmp ne %struct.ib_ucontext* %182, null
  br i1 %183, label %184, label %197

184:                                              ; preds = %181
  %185 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %186 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %185)
  %187 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %188 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %187)
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %191 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %190)
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @mthca_unmap_user_db(%struct.TYPE_19__* %186, i32* %189, i32 %193, i32 %195)
  br label %197

197:                                              ; preds = %184, %181
  br label %198

198:                                              ; preds = %197, %89
  %199 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %200 = icmp ne %struct.ib_ucontext* %199, null
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %203 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %202)
  %204 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %205 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %204)
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %208 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %207)
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %11, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @mthca_unmap_user_db(%struct.TYPE_19__* %203, i32* %206, i32 %210, i32 %212)
  br label %214

214:                                              ; preds = %201, %198
  %215 = load i32, i32* %14, align 4
  %216 = call %struct.ib_cq* @ERR_PTR(i32 %215)
  store %struct.ib_cq* %216, %struct.ib_cq** %5, align 8
  br label %217

217:                                              ; preds = %214, %173, %69, %48, %37, %22
  %218 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  ret %struct.ib_cq* %218
}

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_19__* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mthca_create_cq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @mthca_map_user_db(%struct.TYPE_19__*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.mthca_cq* @kmalloc(i32, i32) #1

declare dso_local i32 @mthca_init_cq(%struct.TYPE_19__*, i32, %struct.TYPE_18__*, i32, %struct.mthca_cq*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mthca_free_cq(%struct.TYPE_19__*, %struct.mthca_cq*) #1

declare dso_local i32 @kfree(%struct.mthca_cq*) #1

declare dso_local i32 @mthca_unmap_user_db(%struct.TYPE_19__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
