; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acard.c_ata_acard_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acard.c_ata_acard_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ata_acard_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@ATP_OLD = common dso_local global i64 0, align 8
@ata_acard_850_setmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"second channel ignored\0A\00", align 1
@ata_acard_86X_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_acard_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acard_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ata_pci_controller* @device_get_softc(i32 %5)
  store %struct.ata_pci_controller* %6, %struct.ata_pci_controller** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ata_generic_intr, align 4
  %9 = call i64 @ata_setup_interrupt(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32, i32* @ata_acard_ch_attach, align 4
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ata_pci_ch_detach, align 4
  %18 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %19 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %21 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATP_OLD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %13
  %28 = load i32, i32* @ata_acard_850_setmode, align 4
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %32 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

35:                                               ; preds = %13
  %36 = load i32, i32* @ata_acard_86X_setmode, align 4
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %27
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
