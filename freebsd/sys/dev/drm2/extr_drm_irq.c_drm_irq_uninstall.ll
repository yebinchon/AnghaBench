; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32*, i64*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, {}*, i32 (%struct.drm_device*, i32)* }
%struct.TYPE_3__ = type { {}* }

@DRIVER_HAVE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"irq=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_irq_uninstall(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = load i32, i32* @DRIVER_HAVE_IRQ, align 4
  %8 = call i32 @drm_core_check_feature(%struct.drm_device* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %119

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i32 @DRM_LOCK(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call i32 @DRM_UNLOCK(%struct.drm_device* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %13
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 6
  %30 = call i32 @mtx_lock(i32* %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %65, %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @DRM_WAKEUP(i32* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 8
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %54, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 %55(%struct.drm_device* %56, i32 %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %37
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %31

68:                                               ; preds = %31
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 6
  %71 = call i32 @mtx_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %13
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %119

78:                                               ; preds = %72
  %79 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %80 = call i32 @drm_dev_to_irq(%struct.drm_device* %79)
  %81 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = bitcast {}** %85 to i32 (%struct.drm_device*)**
  %87 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %86, align 8
  %88 = icmp ne i32 (%struct.drm_device*)* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = bitcast {}** %93 to i32 (%struct.drm_device*)**
  %95 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %94, align 8
  %96 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %97 = call i32 %95(%struct.drm_device* %96)
  br label %98

98:                                               ; preds = %89, %78
  %99 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %103 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @bus_teardown_intr(i32 %101, i32 %104, i32 %107)
  %109 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = bitcast {}** %114 to i32 (%struct.drm_device*)**
  %116 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %115, align 8
  %117 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %118 = call i32 %116(%struct.drm_device* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %98, %75, %10
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DRM_WAKEUP(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_dev_to_irq(%struct.drm_device*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
