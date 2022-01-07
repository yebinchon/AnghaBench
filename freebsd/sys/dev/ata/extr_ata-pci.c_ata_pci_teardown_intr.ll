; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ata_pci_controller = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.ata_channel = type { i32 }

@ata_devclass = common dso_local global i64 0, align 8
@ATA_PCI_MAX_CH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_teardown_intr(i32 %0, i32 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ata_pci_controller*, align 8
  %11 = alloca %struct.ata_pci_controller*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ata_pci_controller* @device_get_softc(i32 %13)
  store %struct.ata_pci_controller* %14, %struct.ata_pci_controller** %10, align 8
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @BUS_TEARDOWN_INTR(i32 %21, i32 %22, %struct.resource* %23, i8* %24)
  store i32 %25, i32* %5, align 4
  br label %57

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.ata_pci_controller* @device_get_softc(i32 %27)
  store %struct.ata_pci_controller* %28, %struct.ata_pci_controller** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @device_get_devclass(i32 %29)
  %31 = load i64, i64* @ata_devclass, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.ata_pci_controller* @device_get_softc(i32 %34)
  %36 = bitcast %struct.ata_pci_controller* %35 to %struct.ata_channel*
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @ATA_PCI_MAX_CH, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %11, align 8
  %44 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %11, align 8
  %51 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %42, %19
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @BUS_TEARDOWN_INTR(i32, i32, %struct.resource*, i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_devclass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
