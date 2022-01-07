; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SWKS_MIO = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ata_serverworks_ch_attach = common dso_local global i32 0, align 4
@ata_serverworks_ch_detach = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i32 0, align 4
@ata_sata_getrev = common dso_local global i32 0, align 4
@ata_serverworks_sata_reset = common dso_local global i32 0, align 4
@SWKS_33 = common dso_local global i64 0, align 8
@ATA_ROSB4_ISA = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@SWKS_100 = common dso_local global i64 0, align 8
@ata_serverworks_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_serverworks_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_serverworks_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_pci_controller* @device_get_softc(i32 %8)
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ata_generic_intr, align 4
  %12 = call i64 @ata_setup_interrupt(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %139

16:                                               ; preds = %1
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SWKS_MIO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %16
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = call i32 @PCIR_BAR(i32 5)
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %36 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %35, i32 0, i32 7
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i32 @bus_alloc_resource_any(i32 %31, i32 %34, i32* %36, i32 %37)
  %39 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %40 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = icmp ne i32 %38, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %139

44:                                               ; preds = %24
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %51 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ata_serverworks_ch_attach, align 4
  %53 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %54 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ata_serverworks_ch_detach, align 4
  %56 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %57 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ata_sata_setmode, align 4
  %59 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %60 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @ata_sata_getrev, align 4
  %62 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %63 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ata_serverworks_sata_reset, align 4
  %65 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %66 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %139

67:                                               ; preds = %16
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SWKS_33, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %67
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_get_parent(i32 %76)
  %78 = call i32 @device_get_children(i32 %77, i32** %5, i32* %6)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %117, label %80

80:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %110, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @pci_get_devid(i32 %90)
  %92 = load i64, i64* @ATA_ROSB4_ISA, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pci_read_config(i32 %104, i32 100, i32 4)
  %106 = and i32 %105, -8193
  %107 = or i32 %106, 16384
  %108 = call i32 @pci_write_config(i32 %99, i32 100, i32 %107, i32 4)
  br label %113

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %81

113:                                              ; preds = %94, %81
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @M_TEMP, align 4
  %116 = call i32 @free(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %75
  br label %134

118:                                              ; preds = %67
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @pci_read_config(i32 %120, i32 90, i32 1)
  %122 = and i32 %121, -65
  %123 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %124 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SWKS_100, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 3, i32 2
  %132 = or i32 %122, %131
  %133 = call i32 @pci_write_config(i32 %119, i32 90, i32 %132, i32 1)
  br label %134

134:                                              ; preds = %118, %117
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* @ata_serverworks_setmode, align 4
  %137 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %138 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %44, %42, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
