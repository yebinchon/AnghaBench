; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_get_last_vbltimestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_get_last_vbltimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)* }
%struct.timeval = type { i32 }

@drm_timestamp_precision = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_get_last_vbltimestamp(%struct.drm_device* %0, i32 %1, %struct.timeval* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timeval* %2, %struct.timeval** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @drm_timestamp_precision, align 8
  %14 = trunc i64 %13 to i32
  %15 = mul nsw i32 %14, 1000
  store i32 %15, i32* %11, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)*, i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)*, i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)** %29, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.timeval*, %struct.timeval** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 %30(%struct.drm_device* %31, i32 %32, i32* %11, %struct.timeval* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %22, %4
  %42 = load %struct.timeval*, %struct.timeval** %8, align 8
  %43 = call i32 (...) @get_drm_timestamp()
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %struct.timeval* %42 to i8*
  %46 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @get_drm_timestamp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
