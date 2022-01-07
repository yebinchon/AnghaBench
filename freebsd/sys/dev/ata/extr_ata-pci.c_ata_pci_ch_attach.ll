; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.resource*, i64 }
%struct.resource = type { i32 }
%struct.ata_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }

@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMDTP_PORT = common dso_local global i32 0, align 4
@ATA_BMIOSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %13, %struct.ata_pci_controller** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.ata_channel*
  store %struct.ata_channel* %16, %struct.ata_channel** %5, align 8
  store %struct.resource* null, %struct.resource** %6, align 8
  store %struct.resource* null, %struct.resource** %7, align 8
  %17 = load i32, i32* @ATA_IOADDR_RID, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_IOPORT, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call %struct.resource* @bus_alloc_resource_any(i32 %18, i32 %19, i32* %9, i32 %20)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %140

25:                                               ; preds = %1
  %26 = load i32, i32* @ATA_CTLADDR_RID, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SYS_RES_IOPORT, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call %struct.resource* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %9, i32 %29)
  store %struct.resource* %30, %struct.resource** %7, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_IOPORT, align 4
  %35 = load i32, i32* @ATA_IOADDR_RID, align 4
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = call i32 @bus_release_resource(i32 %33, i32 %34, i32 %35, %struct.resource* %36)
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %140

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @ata_pci_dmainit(i32 %40)
  %42 = load i32, i32* @ATA_DATA, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %64, %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ATA_COMMAND, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.resource* %48, %struct.resource** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %58 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 8
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %70 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* @ATA_CONTROL, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store %struct.resource* %68, %struct.resource** %74, align 8
  %75 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %76 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 0, i32 2
  %81 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %82 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* @ATA_CONTROL, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 8
  %87 = load %struct.resource*, %struct.resource** %6, align 8
  %88 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %89 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* @ATA_IDX_ADDR, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store %struct.resource* %87, %struct.resource** %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @ata_default_registers(i32 %94)
  %96 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %97 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %96, i32 0, i32 0
  %98 = load %struct.resource*, %struct.resource** %97, align 8
  %99 = icmp ne %struct.resource* %98, null
  br i1 %99, label %100, label %137

100:                                              ; preds = %67
  %101 = load i32, i32* @ATA_BMCMD_PORT, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %133, %100
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ATA_BMDTP_PORT, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %102
  %107 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %108 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %107, i32 0, i32 0
  %109 = load %struct.resource*, %struct.resource** %108, align 8
  %110 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %111 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store %struct.resource* %109, %struct.resource** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %121 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ATA_BMIOSIZE, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %119, %124
  %126 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %127 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 %125, i32* %132, align 8
  br label %133

133:                                              ; preds = %106
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %102

136:                                              ; preds = %102
  br label %137

137:                                              ; preds = %136, %67
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @ata_pci_hw(i32 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %137, %32, %23
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @ata_pci_dmainit(i32) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
