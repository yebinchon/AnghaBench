; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-marvell.c_ata_marvell_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-marvell.c_ata_marvell_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ata_marvell_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@ata_generic_reset = common dso_local global i32 0, align 4
@ata_marvell_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ata_marvell_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_marvell_chipinit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.ata_pci_controller* @device_get_softc(i32* %6)
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ata_generic_intr, align 4
  %10 = call i64 @ata_setup_interrupt(i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @device_add_child(i32* %22, i32* null, i32 -1)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @device_set_ivars(i32* %27, i8* inttoptr (i64 -1 to i8*))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @bus_generic_attach(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* @ata_marvell_ch_attach, align 4
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @ata_pci_ch_detach, align 4
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ata_generic_reset, align 4
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ata_marvell_setmode, align 4
  %43 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %44 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %32, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32*) #1

declare dso_local i64 @ata_setup_interrupt(i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
