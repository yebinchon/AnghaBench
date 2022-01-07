; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_fetch_vpd_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_fetch_vpd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcicfg_vpd = type { i64, i32 }
%struct.pci_devinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pcicfg_vpd }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcicfg_vpd* @pci_fetch_vpd_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.pci_devinfo* @device_get_ivars(i32 %5)
  store %struct.pci_devinfo* %6, %struct.pci_devinfo** %3, align 8
  %7 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %8 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %7, i32 0, i32 0
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = call i32 @pci_read_vpd(i32 %23, %struct.TYPE_3__* %24)
  br label %26

26:                                               ; preds = %20, %14, %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  ret %struct.pcicfg_vpd* %28
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_vpd(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
