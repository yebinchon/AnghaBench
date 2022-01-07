; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-sis.c_ata_sis_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-sis.c_ata_sis_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ata_sis_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@ata_sis_reset = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i32 0, align 4
@ata_sata_getrev = common dso_local global i32 0, align 4
@ata_sis_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_sis_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sis_chipinit(i32 %0) #0 {
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
  br label %84

13:                                               ; preds = %1
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %78 [
    i32 130, label %19
    i32 129, label %20
    i32 133, label %20
    i32 134, label %26
    i32 131, label %26
    i32 132, label %32
    i32 128, label %43
  ]

19:                                               ; preds = %13
  br label %80

20:                                               ; preds = %13, %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_read_config(i32 %22, i32 82, i32 1)
  %24 = and i32 %23, -5
  %25 = call i32 @pci_write_config(i32 %21, i32 82, i32 %24, i32 1)
  br label %80

26:                                               ; preds = %13, %13
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_read_config(i32 %28, i32 73, i32 1)
  %30 = and i32 %29, -2
  %31 = call i32 @pci_write_config(i32 %27, i32 73, i32 %30, i32 1)
  br label %80

32:                                               ; preds = %13
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_read_config(i32 %34, i32 80, i32 2)
  %36 = or i32 %35, 8
  %37 = call i32 @pci_write_config(i32 %33, i32 80, i32 %36, i32 2)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pci_read_config(i32 %39, i32 82, i32 2)
  %41 = or i32 %40, 8
  %42 = call i32 @pci_write_config(i32 %38, i32 82, i32 %41, i32 2)
  br label %80

43:                                               ; preds = %13
  %44 = load i32, i32* @SYS_RES_IOPORT, align 4
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = call i32 @PCIR_BAR(i32 5)
  %48 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %49 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %52 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 5
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = call i32 @bus_alloc_resource_any(i32 %50, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %59 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = icmp ne i32 %57, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %43
  %62 = load i32, i32* @ata_sis_ch_attach, align 4
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @ata_pci_ch_detach, align 4
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %67 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ata_sis_reset, align 4
  %69 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %70 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %61, %43
  %72 = load i32, i32* @ata_sata_setmode, align 4
  %73 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %74 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @ata_sata_getrev, align 4
  %76 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %77 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %2, align 4
  br label %84

78:                                               ; preds = %13
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %84

80:                                               ; preds = %32, %26, %20, %19
  %81 = load i32, i32* @ata_sis_setmode, align 4
  %82 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %83 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %78, %71, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
