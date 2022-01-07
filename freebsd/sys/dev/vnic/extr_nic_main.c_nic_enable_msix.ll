; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_enable_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32, i32, i32* }
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not allocate memory for MSI-X table\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NIC_PF_MSIX_VECTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Request for #%d msix vectors failed, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*)* @nic_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_enable_msix(%struct.nicpf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  %8 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %9 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pci_devinfo* @device_get_ivars(i32 %10)
  store %struct.pci_devinfo* %11, %struct.pci_devinfo** %4, align 8
  %12 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %13 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %18 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i32* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %5, i32 %21)
  %23 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %24 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %26 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %31 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %1
  %36 = load i32, i32* @NIC_PF_MSIX_VECTORS, align 4
  %37 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %38 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 %36, i32* %6, align 4
  %39 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %40 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pci_alloc_msix(i32 %41, i32* %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %48 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45, %35
  %52 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %53 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %56 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %45
  %62 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %63 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %51, %29
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
