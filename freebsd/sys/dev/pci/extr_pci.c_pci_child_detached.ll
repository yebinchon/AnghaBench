; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_child_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_child_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_6__, %struct.resource_list }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.resource_list = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Device leaked IRQ resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Device leaked MSI vectors\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Device leaked memory resources\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Device leaked I/O resources\0A\00", align 1
@PCI_RES_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_child_detached(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.pci_devinfo* @device_get_ivars(i32 %7)
  store %struct.pci_devinfo* %8, %struct.pci_devinfo** %5, align 8
  %9 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %10 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %9, i32 0, i32 1
  store %struct.resource_list* %10, %struct.resource_list** %6, align 8
  %11 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SYS_RES_IRQ, align 4
  %15 = call i64 @resource_list_release_active(%struct.resource_list* %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  %20 = call i32 @pci_printf(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %23 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %30 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28, %21
  %36 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %37 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %36, i32 0, i32 0
  %38 = call i32 @pci_printf(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pci_release_msi(i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = call i64 @resource_list_release_active(%struct.resource_list* %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %50 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %49, i32 0, i32 0
  %51 = call i32 @pci_printf(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SYS_RES_IOPORT, align 4
  %57 = call i64 @resource_list_release_active(%struct.resource_list* %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %61 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %60, i32 0, i32 0
  %62 = call i32 @pci_printf(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %66 = call i32 @pci_cfg_save(i32 %64, %struct.pci_devinfo* %65, i32 1)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @resource_list_release_active(%struct.resource_list*, i32, i32, i32) #1

declare dso_local i32 @pci_printf(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @pci_cfg_save(i32, %struct.pci_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
