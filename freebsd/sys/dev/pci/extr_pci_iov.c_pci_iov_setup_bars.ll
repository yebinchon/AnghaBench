; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_setup_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_setup_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i64 }

@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinfo*)* @pci_iov_setup_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_setup_bars(%struct.pci_devinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcicfg_iov*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_devinfo* %0, %struct.pci_devinfo** %3, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %13, align 8
  store %struct.pcicfg_iov* %14, %struct.pcicfg_iov** %5, align 8
  %15 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %16 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pci_add_resources_ea(i32 %20, i32 %21, i32 1)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %73, %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pci_iov_alloc_bar_ea(%struct.pci_devinfo* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %73

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %5, align 8
  %37 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @PCIR_SRIOV_BAR(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i64 @pci_ea_is_enabled(i32 %35, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %73

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %5, align 8
  %51 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @PCIR_SRIOV_BAR(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @pci_read_bar(i32 %49, i64 %55, i64* %6, i64* %7, i32* %9)
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @pci_mapsize(i64 %62)
  %64 = call i32 @pci_iov_alloc_bar(%struct.pci_devinfo* %60, i32 %61, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %77

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %48
  br label %72

71:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %44, %33
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %23

76:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pci_add_resources_ea(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_iov_alloc_bar_ea(%struct.pci_devinfo*, i32) #1

declare dso_local i64 @pci_ea_is_enabled(i32, i64) #1

declare dso_local i64 @PCIR_SRIOV_BAR(i32) #1

declare dso_local i32 @pci_read_bar(i32, i64, i64*, i64*, i32*) #1

declare dso_local i32 @pci_iov_alloc_bar(%struct.pci_devinfo*, i32, i32) #1

declare dso_local i32 @pci_mapsize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
