; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_pcie_find_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_pcie_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIR_EXTCAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pcie_find_cap(i32 %0, %struct.pci_conf* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @PCIR_EXTCAP, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %13 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @read_config(i32 %11, i32* %13, i64 %14, i32 4)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i64 0, i64* %4, align 8
  br label %43

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @PCI_EXTCAP_ID(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %4, align 8
  br label %43

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @PCI_EXTCAP_NEXTPTR(i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %39 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @read_config(i32 %37, i32* %39, i64 %40, i32 4)
  store i32 %41, i32* %8, align 4
  br label %23

42:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %42, %28, %21
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

declare dso_local i64 @PCI_EXTCAP_ID(i32) #1

declare dso_local i64 @PCI_EXTCAP_NEXTPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
