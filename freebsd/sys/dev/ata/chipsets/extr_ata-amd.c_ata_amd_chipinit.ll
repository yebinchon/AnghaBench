; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-amd.c_ata_amd_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-amd.c_ata_amd_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AMD_BUG = common dso_local global i32 0, align 4
@ata_amd_ch_attach = common dso_local global i32 0, align 4
@ata_amd_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_amd_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_amd_chipinit(i32 %0) #0 {
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
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AMD_BUG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_read_config(i32 %24, i32 65, i32 1)
  %26 = and i32 %25, 15
  %27 = call i32 @pci_write_config(i32 %23, i32 65, i32 %26, i32 1)
  br label %34

28:                                               ; preds = %13
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pci_read_config(i32 %30, i32 65, i32 1)
  %32 = or i32 %31, 240
  %33 = call i32 @pci_write_config(i32 %29, i32 65, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @ata_amd_ch_attach, align 4
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ata_amd_setmode, align 4
  %39 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %40 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
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
