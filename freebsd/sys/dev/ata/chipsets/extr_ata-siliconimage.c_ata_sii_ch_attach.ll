; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_BMCMD_PORT = common dso_local global i64 0, align 8
@ATA_BMSTAT_PORT = common dso_local global i64 0, align 8
@ATA_BMDTP_PORT = common dso_local global i64 0, align 8
@ATA_SA150 = common dso_local global i64 0, align 8
@ATA_SSTATUS = common dso_local global i64 0, align 8
@ATA_SERROR = common dso_local global i64 0, align 8
@ATA_SCONTROL = common dso_local global i64 0, align 8
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ATA_KNOWN_PRESENCE = common dso_local global i32 0, align 4
@SII_BUG = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@ata_sii_status = common dso_local global i32 0, align 4
@SII_SETCLK = common dso_local global i32 0, align 4
@ATA_CHECKS_CABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_sii_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sii_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %11, %struct.ata_pci_controller** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.ata_channel*
  store %struct.ata_channel* %14, %struct.ata_channel** %4, align 8
  %15 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %16 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 2
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @ATA_DATA, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %54, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ATA_COMMAND, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %31, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 128, %39
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 6
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %44, 8
  %46 = add nsw i32 %43, %45
  %47 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %24

57:                                               ; preds = %24
  %58 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %59 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %62 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %61, i32 0, i32 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* @ATA_CONTROL, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 6
  %69 = add nsw i32 138, %68
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 8
  %72 = add nsw i32 %69, %71
  %73 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %74 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i64, i64* @ATA_CONTROL, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 4
  %79 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %80 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %83 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %82, i32 0, i32 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i64, i64* @ATA_IDX_ADDR, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @ata_default_registers(i32 %88)
  %90 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %91 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %94 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %93, i32 0, i32 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  %100 = shl i32 %99, 3
  %101 = add nsw i32 0, %100
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 8
  %104 = add nsw i32 %101, %103
  %105 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %106 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %105, i32 0, i32 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %104, i32* %110, align 4
  %111 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %112 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %115 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %114, i32 0, i32 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i64, i64* @ATA_BMSTAT_PORT, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 %113, i32* %119, align 4
  %120 = load i32, i32* %5, align 4
  %121 = shl i32 %120, 3
  %122 = add nsw i32 2, %121
  %123 = load i32, i32* %6, align 4
  %124 = shl i32 %123, 8
  %125 = add nsw i32 %122, %124
  %126 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %127 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %126, i32 0, i32 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i64, i64* @ATA_BMSTAT_PORT, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %125, i32* %131, align 4
  %132 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %133 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %136 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i64, i64* @ATA_BMDTP_PORT, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* %5, align 4
  %142 = shl i32 %141, 3
  %143 = add nsw i32 4, %142
  %144 = load i32, i32* %6, align 4
  %145 = shl i32 %144, 8
  %146 = add nsw i32 %143, %145
  %147 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %148 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %147, i32 0, i32 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i64, i64* @ATA_BMDTP_PORT, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i32 %146, i32* %152, align 4
  %153 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %154 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ATA_SA150, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %249

160:                                              ; preds = %57
  %161 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %162 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %165 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %164, i32 0, i32 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i64, i64* @ATA_SSTATUS, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* %5, align 4
  %171 = shl i32 %170, 7
  %172 = add nsw i32 260, %171
  %173 = load i32, i32* %6, align 4
  %174 = shl i32 %173, 8
  %175 = add nsw i32 %172, %174
  %176 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %177 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %176, i32 0, i32 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i64, i64* @ATA_SSTATUS, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  store i32 %175, i32* %181, align 4
  %182 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %183 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %186 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %185, i32 0, i32 4
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load i64, i64* @ATA_SERROR, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32 %184, i32* %190, align 4
  %191 = load i32, i32* %5, align 4
  %192 = shl i32 %191, 7
  %193 = add nsw i32 264, %192
  %194 = load i32, i32* %6, align 4
  %195 = shl i32 %194, 8
  %196 = add nsw i32 %193, %195
  %197 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %198 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %197, i32 0, i32 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load i64, i64* @ATA_SERROR, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i32 %196, i32* %202, align 4
  %203 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %204 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %207 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %206, i32 0, i32 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load i64, i64* @ATA_SCONTROL, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  store i32 %205, i32* %211, align 4
  %212 = load i32, i32* %5, align 4
  %213 = shl i32 %212, 7
  %214 = add nsw i32 256, %213
  %215 = load i32, i32* %6, align 4
  %216 = shl i32 %215, 8
  %217 = add nsw i32 %214, %216
  %218 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %219 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %218, i32 0, i32 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = load i64, i64* @ATA_SCONTROL, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i32 %217, i32* %223, align 4
  %224 = load i32, i32* @ATA_NO_SLAVE, align 4
  %225 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %226 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* @ATA_SATA, align 4
  %230 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %231 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* @ATA_KNOWN_PRESENCE, align 4
  %235 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %236 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %240 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = shl i32 %242, 7
  %244 = add nsw i32 328, %243
  %245 = load i32, i32* %6, align 4
  %246 = shl i32 %245, 8
  %247 = add nsw i32 %244, %246
  %248 = call i32 @ATA_OUTL(i32 %241, i32 %247, i32 65536)
  br label %249

249:                                              ; preds = %160, %57
  %250 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %251 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %250, i32 0, i32 0
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @SII_BUG, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %249
  %259 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %260 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  store i32 8192, i32* %261, align 4
  %262 = load i32, i32* @DEV_BSIZE, align 4
  %263 = mul nsw i32 15, %262
  %264 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %265 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  br label %267

267:                                              ; preds = %258, %249
  %268 = load i32, i32* %2, align 4
  %269 = call i32 @ata_pci_hw(i32 %268)
  %270 = load i32, i32* @ata_sii_status, align 4
  %271 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %272 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %275 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %274, i32 0, i32 0
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @SII_SETCLK, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %267
  %283 = load i32, i32* @ATA_CHECKS_CABLE, align 4
  %284 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %285 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %282, %267
  %289 = load i32, i32* %2, align 4
  %290 = call i32 @ata_pci_dmainit(i32 %289)
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

declare dso_local i32 @ata_pci_dmainit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
