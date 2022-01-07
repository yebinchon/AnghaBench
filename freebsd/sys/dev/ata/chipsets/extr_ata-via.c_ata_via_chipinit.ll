; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VIASATA = common dso_local global i32 0, align 4
@ata_via_sata_ch_attach = common dso_local global i32 0, align 4
@ata_via_sata_setmode = common dso_local global i32 0, align 4
@ata_via_sata_getrev = common dso_local global i32 0, align 4
@ata_via_sata_reset = common dso_local global i32 0, align 4
@ATA_SA150 = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ata_via_ch_attach = common dso_local global i32 0, align 4
@ata_via_ch_detach = common dso_local global i32 0, align 4
@ata_via_reset = common dso_local global i32 0, align 4
@VIABAR = common dso_local global i32 0, align 4
@ata_via_new_setmode = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i32 0, align 4
@ata_sata_getrev = common dso_local global i32 0, align 4
@VIACLK = common dso_local global i32 0, align 4
@VIABUG = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@ata_via_old_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_via_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_chipinit(i32 %0) #0 {
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
  br label %145

13:                                               ; preds = %1
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VIASATA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i32, i32* @ata_via_sata_ch_attach, align 4
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ata_via_sata_setmode, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ata_via_sata_getrev, align 4
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @ata_via_sata_reset, align 4
  %33 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %145

35:                                               ; preds = %13
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATA_SA150, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %35
  %44 = load i32, i32* @SYS_RES_IOPORT, align 4
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = call i32 @PCIR_BAR(i32 5)
  %48 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %49 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %52 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 7
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = call i32 @bus_alloc_resource_any(i32 %50, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %59 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 8
  %60 = icmp ne i32 %57, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %43
  %62 = load i32, i32* @ata_via_ch_attach, align 4
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ata_via_ch_detach, align 4
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %67 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @ata_via_reset, align 4
  %69 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %70 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %43
  %72 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %73 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @VIABAR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %82 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %81, i32 0, i32 0
  store i32 3, i32* %82, align 8
  %83 = load i32, i32* @ata_via_new_setmode, align 4
  %84 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %85 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %71
  %87 = load i32, i32* @ata_sata_setmode, align 4
  %88 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %89 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* @ata_sata_getrev, align 4
  %92 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %93 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %2, align 4
  br label %145

94:                                               ; preds = %35
  %95 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %96 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VIACLK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @pci_write_config(i32 %104, i32 80, i32 51053323, i32 4)
  br label %106

106:                                              ; preds = %103, %94
  %107 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %108 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @VIABUG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @ata_via_southbridge_fixup(i32 %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @pci_read_config(i32 %120, i32 67, i32 1)
  %122 = and i32 %121, 144
  %123 = or i32 %122, 42
  %124 = call i32 @pci_write_config(i32 %119, i32 67, i32 %123, i32 1)
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @pci_read_config(i32 %126, i32 68, i32 1)
  %128 = or i32 %127, 8
  %129 = call i32 @pci_write_config(i32 %125, i32 68, i32 %128, i32 1)
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @pci_read_config(i32 %131, i32 70, i32 1)
  %133 = and i32 %132, 12
  %134 = or i32 %133, 240
  %135 = call i32 @pci_write_config(i32 %130, i32 70, i32 %134, i32 1)
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @DEV_BSIZE, align 4
  %138 = call i32 @pci_write_config(i32 %136, i32 96, i32 %137, i32 2)
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @DEV_BSIZE, align 4
  %141 = call i32 @pci_write_config(i32 %139, i32 104, i32 %140, i32 2)
  %142 = load i32, i32* @ata_via_old_setmode, align 4
  %143 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %144 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %118, %90, %22, %11
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @ata_via_southbridge_fixup(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
