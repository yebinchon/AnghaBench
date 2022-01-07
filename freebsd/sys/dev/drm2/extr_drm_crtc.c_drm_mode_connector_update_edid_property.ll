; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_connector_update_edid_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_connector_update_edid_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_7__*, i32, %struct.drm_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.edid = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 2
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 @drm_property_destroy_blob(%struct.drm_device* %17, %struct.TYPE_7__* %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.edid*, %struct.edid** %5, align 8
  %24 = icmp ne %struct.edid* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 1
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @drm_object_property_set_value(i32* %29, i32 %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %22
  %37 = load i32, i32* @EDID_LENGTH, align 4
  %38 = load %struct.edid*, %struct.edid** %5, align 8
  %39 = getelementptr inbounds %struct.edid, %struct.edid* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 1, %40
  %42 = mul nsw i32 %37, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 2
  %45 = load %struct.drm_device*, %struct.drm_device** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.edid*, %struct.edid** %5, align 8
  %48 = call %struct.TYPE_7__* @drm_property_create_blob(%struct.drm_device* %45, i32 %46, %struct.edid* %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 0
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %36
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %36
  %59 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 1
  %61 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %66 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_object_property_set_value(i32* %60, i32 %64, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %58, %55, %25
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @drm_property_destroy_blob(%struct.drm_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @drm_property_create_blob(%struct.drm_device*, i32, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
