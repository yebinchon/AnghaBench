; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_irq_by_busid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_irq_by_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64, i64, i32 }
%struct.drm_irq_busid = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%d:%d:%d => IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_irq_busid*)* @drm_pci_irq_by_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_pci_irq_by_busid(%struct.drm_device* %0, %struct.drm_irq_busid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_irq_busid*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_irq_busid* %1, %struct.drm_irq_busid** %5, align 8
  %6 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %7 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call i32 @drm_get_pci_domain(%struct.drm_device* %10)
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %15 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 255
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %13
  %23 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %24 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %32 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %22, %13, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %30
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %46 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %48 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %51 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %54 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.drm_irq_busid*, %struct.drm_irq_busid** %5, align 8
  %57 = getelementptr inbounds %struct.drm_irq_busid, %struct.drm_irq_busid* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52, i64 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %41, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @drm_get_pci_domain(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
