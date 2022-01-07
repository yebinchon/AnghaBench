; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ite.c_ata_ite_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ite.c_ata_ite_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_IT8213F = common dso_local global i64 0, align 8
@ata_ite_8213_setmode = common dso_local global i32 0, align 4
@ata_ite_821x_setmode = common dso_local global i32 0, align 4
@ata_ite_ch_attach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_ite_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ite_chipinit(i32 %0) #0 {
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
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATA_IT8213F, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %23 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @ata_ite_8213_setmode, align 4
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  br label %42

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pci_read_config(i32 %29, i32 80, i32 1)
  %31 = and i32 %30, -132
  %32 = call i32 @pci_write_config(i32 %28, i32 80, i32 %31, i32 1)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pci_write_config(i32 %33, i32 84, i32 49, i32 1)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pci_write_config(i32 %35, i32 86, i32 49, i32 1)
  %37 = load i32, i32* @ata_ite_821x_setmode, align 4
  %38 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %39 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %27, %21
  %43 = load i32, i32* @ata_ite_ch_attach, align 4
  %44 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %45 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
