; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_generic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_generic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_channel*)*, %struct.ata_channel* }
%struct.ata_channel = type { i32 }

@ATA_PCI_MAX_CH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_generic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ATA_PCI_MAX_CH, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %14 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.ata_channel*, %struct.ata_channel** %19, align 8
  store %struct.ata_channel* %20, %struct.ata_channel** %4, align 8
  %21 = icmp ne %struct.ata_channel* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %12
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ata_channel*)*, i32 (%struct.ata_channel*)** %29, align 8
  %31 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %32 = call i32 %30(%struct.ata_channel* %31)
  br label %33

33:                                               ; preds = %22, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
