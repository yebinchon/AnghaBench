; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_device = type { i64 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_ucontext = type { %struct.ib_ucontext, i32, i32, i32 }
%struct.mlx4_ib_alloc_ucontext_resp_v3 = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_alloc_ucontext_resp = type { i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucontext* (%struct.ib_device*, %struct.ib_udata*)* @mlx4_ib_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucontext* @mlx4_ib_alloc_ucontext(%struct.ib_device* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_ucontext*, align 8
  %8 = alloca %struct.mlx4_ib_alloc_ucontext_resp_v3, align 4
  %9 = alloca %struct.mlx4_ib_alloc_ucontext_resp, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %12 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %11)
  store %struct.mlx4_ib_dev* %12, %struct.mlx4_ib_dev** %6, align 8
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_ucontext* @ERR_PTR(i32 %19)
  store %struct.ib_ucontext* %20, %struct.ib_ucontext** %3, align 8
  br label %147

21:                                               ; preds = %2
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, %struct.mlx4_ib_alloc_ucontext_resp_v3* %8, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, %struct.mlx4_ib_alloc_ucontext_resp_v3* %8, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, %struct.mlx4_ib_alloc_ucontext_resp_v3* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  br label %85

49:                                               ; preds = %21
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %9, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %9, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %9, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %49, %27
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.mlx4_ib_ucontext* @kzalloc(i32 16, i32 %86)
  store %struct.mlx4_ib_ucontext* %87, %struct.mlx4_ib_ucontext** %7, align 8
  %88 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %89 = icmp ne %struct.mlx4_ib_ucontext* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.ib_ucontext* @ERR_PTR(i32 %92)
  store %struct.ib_ucontext* %93, %struct.ib_ucontext** %3, align 8
  br label %147

94:                                               ; preds = %85
  %95 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %96 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %95)
  %97 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %99, i32 0, i32 1
  %101 = call i32 @mlx4_uar_alloc(%struct.TYPE_5__* %98, i32* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %106 = call i32 @kfree(%struct.mlx4_ib_ucontext* %105)
  %107 = load i32, i32* %10, align 4
  %108 = call %struct.ib_ucontext* @ERR_PTR(i32 %107)
  store %struct.ib_ucontext* %108, %struct.ib_ucontext** %3, align 8
  br label %147

109:                                              ; preds = %94
  %110 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %110, i32 0, i32 3
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %113, i32 0, i32 2
  %115 = call i32 @mutex_init(i32* %114)
  %116 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %117 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %123 = call i32 @ib_copy_to_udata(%struct.ib_udata* %122, %struct.mlx4_ib_alloc_ucontext_resp_v3* %8, i32 20)
  store i32 %123, i32* %10, align 4
  br label %128

124:                                              ; preds = %109
  %125 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %126 = bitcast %struct.mlx4_ib_alloc_ucontext_resp* %9 to %struct.mlx4_ib_alloc_ucontext_resp_v3*
  %127 = call i32 @ib_copy_to_udata(%struct.ib_udata* %125, %struct.mlx4_ib_alloc_ucontext_resp_v3* %126, i32 20)
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %133 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %132)
  %134 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %137 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %136, i32 0, i32 1
  %138 = call i32 @mlx4_uar_free(%struct.TYPE_5__* %135, i32* %137)
  %139 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %140 = call i32 @kfree(%struct.mlx4_ib_ucontext* %139)
  %141 = load i32, i32* @EFAULT, align 4
  %142 = sub nsw i32 0, %141
  %143 = call %struct.ib_ucontext* @ERR_PTR(i32 %142)
  store %struct.ib_ucontext* %143, %struct.ib_ucontext** %3, align 8
  br label %147

144:                                              ; preds = %128
  %145 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %146 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %145, i32 0, i32 0
  store %struct.ib_ucontext* %146, %struct.ib_ucontext** %3, align 8
  br label %147

147:                                              ; preds = %144, %131, %104, %90, %17
  %148 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  ret %struct.ib_ucontext* %148
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_ucontext* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_ucontext* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_uar_alloc(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_ucontext*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.mlx4_ib_alloc_ucontext_resp_v3*, i32) #1

declare dso_local i32 @mlx4_uar_free(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
