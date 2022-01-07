; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_sata_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_sata_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.resource*, %struct.ali_sata_resources* }
%struct.resource = type { i32 }
%struct.ali_sata_resources = type { %struct.resource** }
%struct.ata_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }

@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMDTP_PORT = common dso_local global i32 0, align 4
@ATA_BMIOSIZE = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_ali_sata_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ali_sata_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %struct.ali_sata_resources*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %16, %struct.ata_pci_controller** %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_channel*
  store %struct.ata_channel* %19, %struct.ata_channel** %5, align 8
  store %struct.resource* null, %struct.resource** %7, align 8
  store %struct.resource* null, %struct.resource** %8, align 8
  %20 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %25 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 2
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 1
  %30 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %29, align 8
  store %struct.ali_sata_resources* %30, %struct.ali_sata_resources** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %6, align 8
  %35 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %34, i32 0, i32 0
  %36 = load %struct.resource**, %struct.resource*** %35, align 8
  %37 = getelementptr inbounds %struct.resource*, %struct.resource** %36, i64 2
  %38 = load %struct.resource*, %struct.resource** %37, align 8
  store %struct.resource* %38, %struct.resource** %7, align 8
  %39 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %6, align 8
  %40 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %39, i32 0, i32 0
  %41 = load %struct.resource**, %struct.resource*** %40, align 8
  %42 = getelementptr inbounds %struct.resource*, %struct.resource** %41, i64 3
  %43 = load %struct.resource*, %struct.resource** %42, align 8
  store %struct.resource* %43, %struct.resource** %8, align 8
  br label %55

44:                                               ; preds = %1
  %45 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %6, align 8
  %46 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %45, i32 0, i32 0
  %47 = load %struct.resource**, %struct.resource*** %46, align 8
  %48 = getelementptr inbounds %struct.resource*, %struct.resource** %47, i64 0
  %49 = load %struct.resource*, %struct.resource** %48, align 8
  store %struct.resource* %49, %struct.resource** %7, align 8
  %50 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %6, align 8
  %51 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %50, i32 0, i32 0
  %52 = load %struct.resource**, %struct.resource*** %51, align 8
  %53 = getelementptr inbounds %struct.resource*, %struct.resource** %52, i64 1
  %54 = load %struct.resource*, %struct.resource** %53, align 8
  store %struct.resource* %54, %struct.resource** %8, align 8
  br label %55

55:                                               ; preds = %44, %33
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ata_pci_dmainit(i32 %56)
  %58 = load i32, i32* @ATA_DATA, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %85, %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ATA_COMMAND, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load %struct.resource*, %struct.resource** %7, align 8
  %65 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %66 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store %struct.resource* %64, %struct.resource** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 8, i32 0
  %77 = add nsw i32 %72, %76
  %78 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %77, i32* %84, align 8
  br label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %59

88:                                               ; preds = %59
  %89 = load %struct.resource*, %struct.resource** %8, align 8
  %90 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %91 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* @ATA_CONTROL, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store %struct.resource* %89, %struct.resource** %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 4, i32 0
  %100 = add nsw i32 2, %99
  %101 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %102 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @ATA_CONTROL, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 8
  %107 = load %struct.resource*, %struct.resource** %7, align 8
  %108 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %109 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @ATA_IDX_ADDR, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store %struct.resource* %107, %struct.resource** %113, align 8
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @ata_default_registers(i32 %114)
  %116 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %117 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %116, i32 0, i32 0
  %118 = load %struct.resource*, %struct.resource** %117, align 8
  %119 = icmp ne %struct.resource* %118, null
  br i1 %119, label %120, label %157

120:                                              ; preds = %88
  %121 = load i32, i32* @ATA_BMCMD_PORT, align 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %153, %120
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @ATA_BMDTP_PORT, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %122
  %127 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %128 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %127, i32 0, i32 0
  %129 = load %struct.resource*, %struct.resource** %128, align 8
  %130 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %131 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store %struct.resource* %129, %struct.resource** %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %141 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ATA_BMIOSIZE, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %139, %144
  %146 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %147 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %146, i32 0, i32 2
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i32 %145, i32* %152, align 8
  br label %153

153:                                              ; preds = %126
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %122

156:                                              ; preds = %122
  br label %157

157:                                              ; preds = %156, %88
  %158 = load i32, i32* @ATA_NO_SLAVE, align 4
  %159 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %160 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @ATA_SATA, align 4
  %164 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %165 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %2, align 4
  %169 = call i32 @ata_pci_hw(i32 %168)
  ret i32 0
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @ata_pci_dmainit(i32) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
