; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_extcap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_extcap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@PCIR_EXTCAP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_extcap_method(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pci_devinfo*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pci_devinfo* @device_get_ivars(i32 %14)
  store %struct.pci_devinfo* %15, %struct.pci_devinfo** %10, align 8
  %16 = load %struct.pci_devinfo*, %struct.pci_devinfo** %10, align 8
  %17 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %16, i32 0, i32 0
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %4
  %26 = load i32, i32* @PCIR_EXTCAP, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @pci_read_config(i32 %27, i32 %28, i32 4)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %25
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* %5, align 4
  br label %62

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @PCI_EXTCAP_ID(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  store i32 0, i32* %5, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @PCI_EXTCAP_NEXTPTR(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @pci_read_config(i32 %57, i32 %58, i32 4)
  store i32 %59, i32* %12, align 4
  br label %38

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %49, %35, %23
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCI_EXTCAP_ID(i32) #1

declare dso_local i32 @PCI_EXTCAP_NEXTPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
