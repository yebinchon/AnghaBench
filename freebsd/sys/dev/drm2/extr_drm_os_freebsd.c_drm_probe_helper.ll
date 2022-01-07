; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_drm_probe_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_drm_probe_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@PCIC_DISPLAY = common dso_local global i64 0, align 8
@PCIS_DISPLAY_VGA = common dso_local global i64 0, align 8
@PCIS_DISPLAY_OTHER = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s desc: %s\0A\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_probe_helper(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pci_get_vendor(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pci_get_device(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @pci_get_class(i32 %13)
  %15 = load i64, i64* @PCIC_DISPLAY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @pci_get_subclass(i32 %18)
  %20 = load i64, i64* @PCIS_DISPLAY_VGA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @pci_get_subclass(i32 %23)
  %25 = load i64, i64* @PCIS_DISPLAY_OTHER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call %struct.TYPE_5__* @drm_find_description(i32 %31, i32 %32, %struct.TYPE_5__* %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32* @device_get_desc(i32 %38)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @device_get_nameunit(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_set_desc(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @DRM_OBSOLETE(i32 %54)
  %56 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %30
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %53, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local %struct.TYPE_5__* @drm_find_description(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32* @device_get_desc(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @DRM_OBSOLETE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
