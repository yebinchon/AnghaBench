; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }

@PCIC_STORAGE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@PCIS_STORAGE_IDE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s ATA controller\00", align 1
@ata_generic_chipinit = common dso_local global i32 0, align 4
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca [64 x i8], align 16
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ata_pci_controller* @device_get_softc(i32 %6)
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_class(i32 %8)
  %10 = load i64, i64* @PCIC_STORAGE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @pci_get_subclass(i32 %15)
  %17 = load i64, i64* @PCIS_STORAGE_IDE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %14
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @ata_pcivendor2str(i32 %23)
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %28 = call i32 @device_set_desc_copy(i32 %26, i8* %27)
  %29 = load i32, i32* @ata_generic_chipinit, align 4
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %21, %19, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @ata_pcivendor2str(i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
