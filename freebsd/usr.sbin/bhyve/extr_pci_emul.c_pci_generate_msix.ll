; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_generate_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_generate_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.msix_table_entry*, i64 }
%struct.msix_table_entry = type { i32, i32, i32 }

@PCIM_MSIX_VCTRL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_generate_msix(%struct.pci_devinst* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_devinst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msix_table_entry*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %7 = call i32 @pci_msix_enabled(%struct.pci_devinst* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %50

10:                                               ; preds = %2
  %11 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %12 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %50

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %20 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %50

25:                                               ; preds = %17
  %26 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %27 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.msix_table_entry*, %struct.msix_table_entry** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %29, i64 %31
  store %struct.msix_table_entry* %32, %struct.msix_table_entry** %5, align 8
  %33 = load %struct.msix_table_entry*, %struct.msix_table_entry** %5, align 8
  %34 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCIM_MSIX_VCTRL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %41 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.msix_table_entry*, %struct.msix_table_entry** %5, align 8
  %44 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.msix_table_entry*, %struct.msix_table_entry** %5, align 8
  %47 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vm_lapic_msi(i32 %42, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %9, %16, %24, %39, %25
  ret void
}

declare dso_local i32 @pci_msix_enabled(%struct.pci_devinst*) #1

declare dso_local i32 @vm_lapic_msi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
