; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ATA_DATA = common dso_local global i64 0, align 8
@ATA_MAX_RES = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i64 0, align 8
@ATA_COUNT = common dso_local global i64 0, align 8
@ATA_SECTOR = common dso_local global i64 0, align 8
@ATA_CYL_LSB = common dso_local global i64 0, align 8
@ATA_CYL_MSB = common dso_local global i64 0, align 8
@ATA_DRIVE = common dso_local global i64 0, align 8
@ATA_COMMAND = common dso_local global i64 0, align 8
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_BMCMD_PORT = common dso_local global i64 0, align 8
@ATA_BMSTAT_PORT = common dso_local global i64 0, align 8
@ATA_BMDTP_PORT = common dso_local global i64 0, align 8
@ATA_SSTATUS = common dso_local global i64 0, align 8
@ATA_SERROR = common dso_local global i64 0, align 8
@ATA_SCONTROL = common dso_local global i64 0, align 8
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ATA_KNOWN_PRESENCE = common dso_local global i32 0, align 4
@ata_serverworks_tf_read = common dso_local global i32 0, align 4
@ata_serverworks_tf_write = common dso_local global i32 0, align 4
@ATA_K2 = common dso_local global i64 0, align 8
@ATA_DMA_BEFORE_CMD = common dso_local global i32 0, align 4
@ata_serverworks_status = common dso_local global i32 0, align 4
@ATA_STATUS_IS_LONG = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_serverworks_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_serverworks_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_channel*
  store %struct.ata_channel* %13, %struct.ata_channel** %4, align 8
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 256
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @ATA_DATA, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %35, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ATA_MAX_RES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %29 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %27, i32* %34, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 0
  %41 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i64, i64* @ATA_DATA, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 4
  %49 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* @ATA_FEATURE, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 8
  %57 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %58 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* @ATA_COUNT, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 12
  %65 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %66 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i64, i64* @ATA_SECTOR, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 16
  %73 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %74 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i64, i64* @ATA_CYL_LSB, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 20
  %81 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %82 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %81, i32 0, i32 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* @ATA_CYL_MSB, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 24
  %89 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %90 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %89, i32 0, i32 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i64, i64* @ATA_DRIVE, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 28
  %97 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i64, i64* @ATA_COMMAND, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 4
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 32
  %105 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %106 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %105, i32 0, i32 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i64, i64* @ATA_CONTROL, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @ata_default_registers(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 48
  %115 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %116 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %115, i32 0, i32 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 50
  %123 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %124 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i64, i64* @ATA_BMSTAT_PORT, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 52
  %131 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %132 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %131, i32 0, i32 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* @ATA_BMDTP_PORT, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 %130, i32* %136, align 4
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 64
  %139 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %140 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %139, i32 0, i32 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i64, i64* @ATA_SSTATUS, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 %138, i32* %144, align 4
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 68
  %147 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %148 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %147, i32 0, i32 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i64, i64* @ATA_SERROR, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i32 %146, i32* %152, align 4
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 72
  %155 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %156 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %155, i32 0, i32 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i64, i64* @ATA_SCONTROL, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i32 %154, i32* %160, align 4
  %161 = load i32, i32* @ATA_NO_SLAVE, align 4
  %162 = load i32, i32* @ATA_SATA, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @ATA_KNOWN_PRESENCE, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %167 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %2, align 4
  %171 = call i32 @ata_pci_hw(i32 %170)
  %172 = load i32, i32* @ata_serverworks_tf_read, align 4
  %173 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %174 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @ata_serverworks_tf_write, align 4
  %177 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %178 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %181 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @ATA_K2, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %221

187:                                              ; preds = %38
  %188 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %189 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 128
  %193 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %194 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 128
  %198 = call i32 @ATA_INL(i32 %195, i32 %197)
  %199 = and i32 %198, -262145
  %200 = call i32 @ATA_OUTL(i32 %190, i32 %192, i32 %199)
  %201 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %202 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 136
  %206 = call i32 @ATA_OUTL(i32 %203, i32 %205, i32 0)
  %207 = load i32, i32* @ATA_DMA_BEFORE_CMD, align 4
  %208 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %209 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* @ata_serverworks_status, align 4
  %213 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %214 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* @ATA_STATUS_IS_LONG, align 4
  %217 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %218 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %187, %38
  %222 = load i32, i32* @DEV_BSIZE, align 4
  %223 = mul nsw i32 64, %222
  %224 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %225 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  %227 = load i32, i32* %2, align 4
  %228 = call i32 @ata_pci_dmainit(i32 %227)
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ata_pci_dmainit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
