; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIRTIO_PCI_VENDORID = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@VIRTIO_PCI_DEVICEID_MIN = common dso_local global i64 0, align 8
@VIRTIO_PCI_DEVICEID_MAX = common dso_local global i64 0, align 8
@VIRTIO_PCI_ABI_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"VirtIO PCI %s adapter\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtpci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [36 x i8], align 16
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_vendor(i32 %6)
  %8 = load i64, i64* @VIRTIO_PCI_VENDORID, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_device(i32 %13)
  %15 = load i64, i64* @VIRTIO_PCI_DEVICEID_MIN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @pci_get_device(i32 %18)
  %20 = load i64, i64* @VIRTIO_PCI_DEVICEID_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @pci_get_revid(i32 %25)
  %27 = load i64, i64* @VIRTIO_PCI_ABI_VERSION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pci_get_subdevice(i32 %32)
  %34 = call i8* @virtio_device_name(i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = getelementptr inbounds [36 x i8], [36 x i8]* %4, i64 0, i64 0
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @snprintf(i8* %39, i32 36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %3, align 4
  %43 = getelementptr inbounds [36 x i8], [36 x i8]* %4, i64 0, i64 0
  %44 = call i32 @device_set_desc_copy(i32 %42, i8* %43)
  %45 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %29, %22, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i8* @virtio_device_name(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
