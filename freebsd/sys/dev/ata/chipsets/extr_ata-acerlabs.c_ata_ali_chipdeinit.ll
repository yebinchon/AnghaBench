; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_chipdeinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_chipdeinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.ali_sata_resources*, %struct.TYPE_2__* }
%struct.ali_sata_resources = type { i32** }
%struct.TYPE_2__ = type { i64 }

@ALI_SATA = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_ATAPCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_ali_chipdeinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ali_chipdeinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ali_sata_resources*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ata_pci_controller* @device_get_softc(i32 %6)
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %3, align 8
  %8 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %9 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ALI_SATA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %17 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %16, i32 0, i32 0
  %18 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %17, align 8
  store %struct.ali_sata_resources* %18, %struct.ali_sata_resources** %4, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %45, %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %4, align 8
  %24 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PCIR_BAR(i32 %34)
  %36 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %4, align 8
  %37 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 %35, i32* %42)
  br label %44

44:                                               ; preds = %31, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %4, align 8
  %50 = load i32, i32* @M_ATAPCI, align 4
  %51 = call i32 @free(%struct.ali_sata_resources* %49, i32 %50)
  %52 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %53 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %52, i32 0, i32 0
  store %struct.ali_sata_resources* null, %struct.ali_sata_resources** %53, align 8
  br label %54

54:                                               ; preds = %48, %1
  ret i32 0
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @free(%struct.ali_sata_resources*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
