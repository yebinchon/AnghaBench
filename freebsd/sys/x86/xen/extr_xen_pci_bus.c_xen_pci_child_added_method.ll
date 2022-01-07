; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_pci_bus.c_xen_pci_child_added_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_pci_bus.c_xen_pci_child_added_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.physdev_pci_device_add = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"xen_pci_add_child_method called with NULL dinfo\00", align 1
@PHYSDEVOP_pci_device_add = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to add device bus %u devfn %u error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_pci_child_added_method(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.physdev_pci_device_add, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.pci_devinfo* @device_get_ivars(i32 %8)
  store %struct.pci_devinfo* %9, %struct.pci_devinfo** %5, align 8
  %10 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %11 = icmp ne %struct.pci_devinfo* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @bzero(%struct.physdev_pci_device_add* %6, i32 12)
  %15 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %16 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %21 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %26 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %31 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %29, %33
  %35 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @PHYSDEVOP_pci_device_add, align 4
  %37 = call i32 @HYPERVISOR_physdev_op(i32 %36, %struct.physdev_pci_device_add* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %2
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.physdev_pci_device_add*, i32) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_pci_device_add*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
