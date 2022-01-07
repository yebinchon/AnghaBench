; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_do_pci_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_do_pci_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.xen_pci_op }
%struct.xen_pci_op = type { i32 }

@_XEN_PCIF_active = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed HYPERVISOR_poll: err=%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pciback not responding!!!\0A\00", align 1
@XEN_PCI_ERR_dev_not_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*, %struct.xen_pci_op*)* @do_pci_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pci_op(%struct.pcifront_device* %0, %struct.xen_pci_op* %1) #0 {
  %3 = alloca %struct.pcifront_device*, align 8
  %4 = alloca %struct.xen_pci_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_pci_op*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %3, align 8
  store %struct.xen_pci_op* %1, %struct.xen_pci_op** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.xen_pci_op* %13, %struct.xen_pci_op** %6, align 8
  %14 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %15 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.xen_pci_op*, %struct.xen_pci_op** %6, align 8
  %21 = load %struct.xen_pci_op*, %struct.xen_pci_op** %4, align 8
  %22 = call i32 @memcpy(%struct.xen_pci_op* %20, %struct.xen_pci_op* %21, i32 4)
  %23 = call i32 (...) @wmb()
  %24 = load i32, i32* @_XEN_PCIF_active, align 4
  %25 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %26 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i64*
  %30 = call i32 @set_bit(i32 %24, i64* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @notify_remote_via_evtchn(i32 %31)
  %33 = load i64, i64* @time_uptime, align 8
  %34 = add nsw i64 %33, 2
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @clear_evtchn(i32 %35)
  br label %37

37:                                               ; preds = %71, %2
  %38 = load i32, i32* @_XEN_PCIF_active, align 4
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %40 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i64*
  %44 = call i64 @test_bit(i32 %38, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %37
  %47 = load i32, i32* @hz, align 4
  %48 = mul nsw i32 3, %47
  %49 = call i32 @HYPERVISOR_poll(i32* %7, i32 1, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @clear_evtchn(i32 %56)
  %58 = load i64, i64* @time_uptime, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = call i32 @WPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @_XEN_PCIF_active, align 4
  %64 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %65 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = bitcast i32* %67 to i64*
  %69 = call i32 @clear_bit(i32 %63, i64* %68)
  %70 = load i32, i32* @XEN_PCI_ERR_dev_not_found, align 4
  store i32 %70, i32* %9, align 4
  br label %79

71:                                               ; preds = %55
  br label %37

72:                                               ; preds = %37
  %73 = load %struct.xen_pci_op*, %struct.xen_pci_op** %4, align 8
  %74 = load %struct.xen_pci_op*, %struct.xen_pci_op** %6, align 8
  %75 = call i32 @memcpy(%struct.xen_pci_op* %73, %struct.xen_pci_op* %74, i32 4)
  %76 = load %struct.xen_pci_op*, %struct.xen_pci_op** %4, align 8
  %77 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %61
  %80 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %81 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %80, i32 0, i32 0
  %82 = call i32 @mtx_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.xen_pci_op*, %struct.xen_pci_op*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

declare dso_local i32 @clear_evtchn(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @HYPERVISOR_poll(i32*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
