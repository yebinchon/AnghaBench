; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_5__*, %struct.resource*, %struct.resource* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.resource = type { i32 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.resource* }

@VIABAR = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IOSIZE = common dso_local global i32 0, align 4
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMDTP_PORT = common dso_local global i32 0, align 4
@ATA_BMIOSIZE = common dso_local global i32 0, align 4
@ATA_SSTATUS = common dso_local global i64 0, align 8
@ATA_SERROR = common dso_local global i64 0, align 8
@ATA_SCONTROL = common dso_local global i64 0, align 8
@ata_via_status = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_via_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %12, %struct.ata_pci_controller** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_channel*
  store %struct.ata_channel* %15, %struct.ata_channel** %5, align 8
  %16 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %17 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VIABAR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %134

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ata_pci_dmainit(i32 %25)
  %27 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PCIR_BAR(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_parent(i32 %31)
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call %struct.resource* @bus_alloc_resource_any(i32 %32, i32 %33, i32* %8, i32 %34)
  store %struct.resource* %35, %struct.resource** %6, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %238

39:                                               ; preds = %24
  %40 = load i32, i32* @ATA_DATA, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %62, %39
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ATA_COMMAND, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store %struct.resource* %46, %struct.resource** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %56 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 8
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %68 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* @ATA_CONTROL, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store %struct.resource* %66, %struct.resource** %72, align 8
  %73 = load i32, i32* @ATA_IOSIZE, align 4
  %74 = add nsw i32 2, %73
  %75 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %76 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* @ATA_CONTROL, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 8
  %81 = load %struct.resource*, %struct.resource** %6, align 8
  %82 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %83 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* @ATA_IDX_ADDR, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.resource* %81, %struct.resource** %87, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @ata_default_registers(i32 %88)
  %90 = load i32, i32* @ATA_BMCMD_PORT, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %122, %65
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @ATA_BMDTP_PORT, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  %96 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %97 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %96, i32 0, i32 2
  %98 = load %struct.resource*, %struct.resource** %97, align 8
  %99 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %100 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store %struct.resource* %98, %struct.resource** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %110 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ATA_BMIOSIZE, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %108, %113
  %115 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %116 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 8
  br label %122

122:                                              ; preds = %95
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %91

125:                                              ; preds = %91
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @ata_pci_hw(i32 %126)
  %128 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %129 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %130, 2
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %238

133:                                              ; preds = %125
  br label %141

134:                                              ; preds = %1
  %135 = load i32, i32* %3, align 4
  %136 = call i64 @ata_pci_ch_attach(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @ENXIO, align 4
  store i32 %139, i32* %2, align 4
  br label %238

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %133
  %142 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %143 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %142, i32 0, i32 1
  %144 = load %struct.resource*, %struct.resource** %143, align 8
  %145 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %146 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i64, i64* @ATA_SSTATUS, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store %struct.resource* %144, %struct.resource** %150, align 8
  %151 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %152 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %155 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %154, i32 0, i32 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %153, %158
  %160 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %161 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %160, i32 0, i32 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i64, i64* @ATA_SSTATUS, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 %159, i32* %165, align 8
  %166 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %167 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %166, i32 0, i32 1
  %168 = load %struct.resource*, %struct.resource** %167, align 8
  %169 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %170 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %169, i32 0, i32 3
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i64, i64* @ATA_SERROR, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store %struct.resource* %168, %struct.resource** %174, align 8
  %175 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %176 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %179 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %178, i32 0, i32 0
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %177, %182
  %184 = add nsw i32 4, %183
  %185 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %186 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %185, i32 0, i32 3
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i64, i64* @ATA_SERROR, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i32 %184, i32* %190, align 8
  %191 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %192 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %191, i32 0, i32 1
  %193 = load %struct.resource*, %struct.resource** %192, align 8
  %194 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %195 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %194, i32 0, i32 3
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i64, i64* @ATA_SCONTROL, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  store %struct.resource* %193, %struct.resource** %199, align 8
  %200 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %201 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %204 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %202, %207
  %209 = add nsw i32 8, %208
  %210 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %211 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %210, i32 0, i32 3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i64, i64* @ATA_SCONTROL, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  store i32 %209, i32* %215, align 8
  %216 = load i32, i32* @ata_via_status, align 4
  %217 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %218 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 8
  %220 = load i32, i32* @ATA_NO_SLAVE, align 4
  %221 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %222 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* @ATA_SATA, align 4
  %226 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %227 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %231 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %232 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %236 = load i64, i64* @ATA_SERROR, align 8
  %237 = call i32 @ata_sata_scr_write(%struct.ata_channel* %235, i32 -1, i64 %236, i32 -1)
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %141, %138, %132, %37
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_pci_dmainit(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

declare dso_local i64 @ata_pci_ch_attach(i32) #1

declare dso_local i32 @ata_sata_scr_write(%struct.ata_channel*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
