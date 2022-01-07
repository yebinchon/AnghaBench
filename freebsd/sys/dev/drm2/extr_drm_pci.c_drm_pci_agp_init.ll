; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_agp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_agp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@DRIVER_REQUIRE_AGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot initialize the agpgart module.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MTRR_WC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_pci_agp_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %5 = call i64 @drm_core_has_AGP(%struct.drm_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %76

7:                                                ; preds = %1
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call i64 @drm_pci_device_is_agp(%struct.drm_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.TYPE_4__* @drm_agp_init(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  br label %16

16:                                               ; preds = %11, %7
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = load i32, i32* @DRIVER_REQUIRE_AGP, align 4
  %19 = call i64 @drm_core_check_feature(%struct.drm_device* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %77

30:                                               ; preds = %21, %16
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = call i64 @drm_core_has_MTRR(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %39
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DRM_MTRR_WC, align 4
  %61 = call i64 @drm_mtrr_add(i64 %53, i32 %59, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %73

68:                                               ; preds = %47
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %39, %34
  br label %75

75:                                               ; preds = %74, %30
  br label %76

76:                                               ; preds = %75, %1
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %26
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @drm_core_has_AGP(%struct.drm_device*) #1

declare dso_local i64 @drm_pci_device_is_agp(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @drm_agp_init(%struct.drm_device*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @drm_core_has_MTRR(%struct.drm_device*) #1

declare dso_local i64 @drm_mtrr_add(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
