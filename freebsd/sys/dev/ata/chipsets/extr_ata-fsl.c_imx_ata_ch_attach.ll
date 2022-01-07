; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-fsl.c_imx_ata_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-fsl.c_imx_ata_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ATA_DATA = common dso_local global i64 0, align 8
@ATA_MAX_RES = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i64 0, align 8
@ATA_ERROR = common dso_local global i64 0, align 8
@ATA_COUNT = common dso_local global i64 0, align 8
@ATA_SECTOR = common dso_local global i64 0, align 8
@ATA_CYL_LSB = common dso_local global i64 0, align 8
@ATA_CYL_MSB = common dso_local global i64 0, align 8
@ATA_DRIVE = common dso_local global i64 0, align 8
@ATA_COMMAND = common dso_local global i64 0, align 8
@ATA_STATUS = common dso_local global i64 0, align 8
@ATA_ALTSTAT = common dso_local global i64 0, align 8
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@ATA_CHECKS_CABLE = common dso_local global i32 0, align 4
@ATA_KNOWN_PRESENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx_ata_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ata_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_channel*
  store %struct.ata_channel* %12, %struct.ata_channel** %4, align 8
  %13 = load i64, i64* @ATA_DATA, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ATA_MAX_RES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %21 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %22, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bus_write_2(i32 %36, i32 36, i32 128)
  %38 = call i32 @DELAY(i32 100)
  %39 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %40 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_write_2(i32 %41, i32 36, i32 192)
  %43 = call i32 @DELAY(i32 100)
  %44 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %45 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_write_1(i32 %46, i32 0, i32 3)
  %48 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %49 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_write_1(i32 %50, i32 1, i32 3)
  %52 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %53 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bus_write_1(i32 %54, i32 2, i32 2)
  %56 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %57 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bus_write_1(i32 %58, i32 3, i32 5)
  %60 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %61 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bus_write_1(i32 %62, i32 4, i32 5)
  %64 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %65 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_write_1(i32 %66, i32 5, i32 6)
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bus_write_1(i32 %70, i32 6, i32 1)
  %72 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %73 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_write_1(i32 %74, i32 7, i32 1)
  %76 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %77 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bus_write_1(i32 %78, i32 8, i32 1)
  %80 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %81 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bus_write_2(i32 %82, i32 36, i32 193)
  %84 = call i32 @DELAY(i32 30000)
  %85 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %86 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* @ATA_DATA, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 160, i32* %90, align 4
  %91 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %92 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* @ATA_FEATURE, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 164, i32* %96, align 4
  %97 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @ATA_ERROR, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 164, i32* %102, align 4
  %103 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %104 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i64, i64* @ATA_COUNT, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 168, i32* %108, align 4
  %109 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %110 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i64, i64* @ATA_SECTOR, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 172, i32* %114, align 4
  %115 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %116 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* @ATA_CYL_LSB, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 176, i32* %120, align 4
  %121 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %122 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i64, i64* @ATA_CYL_MSB, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 180, i32* %126, align 4
  %127 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %128 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i64, i64* @ATA_DRIVE, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 184, i32* %132, align 4
  %133 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %134 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i64, i64* @ATA_COMMAND, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 188, i32* %138, align 4
  %139 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %140 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i64, i64* @ATA_STATUS, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i32 188, i32* %144, align 4
  %145 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %146 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i64, i64* @ATA_ALTSTAT, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 216, i32* %150, align 4
  %151 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %152 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* @ATA_CONTROL, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 216, i32* %156, align 4
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @ata_pci_hw(i32 %157)
  %159 = load i32, i32* @ATA_NO_SLAVE, align 4
  %160 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %161 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @ATA_USE_16BIT, align 4
  %165 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %166 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* @ATA_CHECKS_CABLE, align 4
  %170 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %171 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @ATA_KNOWN_PRESENCE, align 4
  %175 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %176 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %180 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @bus_write_2(i32 %181, i32 40, i32 248)
  %183 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %184 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @bus_write_2(i32 %185, i32 44, i32 136)
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
