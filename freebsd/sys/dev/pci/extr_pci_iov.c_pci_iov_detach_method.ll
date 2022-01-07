; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_detach_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_detach_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i64, i32, i32, i32* }

@Giant = common dso_local global i32 0, align 4
@IOV_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_SRIOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_iov_detach_method(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_devinfo*, align 8
  %7 = alloca %struct.pcicfg_iov*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 @mtx_lock(i32* @Giant)
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %6, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %13, align 8
  store %struct.pcicfg_iov* %14, %struct.pcicfg_iov** %7, align 8
  %15 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %16 = icmp eq %struct.pcicfg_iov* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %21 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %26 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IOV_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %19
  %32 = call i32 @mtx_unlock(i32* @Giant)
  %33 = load i32, i32* @EBUSY, align 4
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %24
  %35 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %36 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.pcicfg_iov* null, %struct.pcicfg_iov** %37, align 8
  %38 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %39 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %44 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @destroy_dev(i32* %45)
  %47 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %48 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %51 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nvlist_destroy(i32 %52)
  %54 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %7, align 8
  %55 = load i32, i32* @M_SRIOV, align 4
  %56 = call i32 @free(%struct.pcicfg_iov* %54, i32 %55)
  %57 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %31, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @nvlist_destroy(i32) #1

declare dso_local i32 @free(%struct.pcicfg_iov*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
