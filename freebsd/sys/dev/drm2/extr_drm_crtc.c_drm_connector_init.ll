; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_connector_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.drm_connector = type { i32, %struct.TYPE_6__, i32, i32, i32*, i32, i32, i32, i64, %struct.drm_connector_funcs*, %struct.drm_device*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.drm_connector_funcs = type { i32 }

@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i32 0, align 4
@drm_connector_enum_list = common dso_local global %struct.TYPE_7__* null, align 8
@connector_status_unknown = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_init(%struct.drm_device* %0, %struct.drm_connector* %1, %struct.drm_connector_funcs* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_funcs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_funcs* %2, %struct.drm_connector_funcs** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @sx_xlock(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = load i32, i32* @DRM_MODE_OBJECT_CONNECTOR, align 4
  %18 = call i32 @drm_mode_object_get(%struct.drm_device* %14, %struct.TYPE_6__* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %90

22:                                               ; preds = %4
  %23 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 11
  %25 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 10
  store %struct.drm_device* %28, %struct.drm_device** %30, align 8
  %31 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %7, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 9
  store %struct.drm_connector_funcs* %31, %struct.drm_connector_funcs** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @drm_connector_enum_list, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 8
  store i64 %43, i64* %45, align 8
  %46 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 7
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 6
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 5
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @connector_status_unknown, align 4
  %58 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 2
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = call i32 @list_add_tail(i32* %61, i32* %64)
  %66 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %22
  %75 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %76 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %75, i32 0, i32 1
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @drm_object_attach_property(%struct.TYPE_6__* %76, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %74, %22
  %83 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 1
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @drm_object_attach_property(%struct.TYPE_6__* %84, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %82, %21
  %91 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = call i32 @sx_xunlock(i32* %93)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @drm_object_attach_property(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
