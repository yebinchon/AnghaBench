; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ata_channel = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PR_SX4X = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@PR_SATA = common dso_local global i32 0, align 4
@PR_SATA2 = common dso_local global i32 0, align 4
@PR_CMBO = common dso_local global i32 0, align 4
@PR_CMBO2 = common dso_local global i32 0, align 4
@ATA_SSTATUS = common dso_local global i64 0, align 8
@ATA_SERROR = common dso_local global i64 0, align 8
@ATA_SCONTROL = common dso_local global i64 0, align 8
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@ATA_CHECKS_CABLE = common dso_local global i32 0, align 4
@ata_promise_sx4_command = common dso_local global i32 0, align 4
@ata_promise_mio_command = common dso_local global i32 0, align 4
@ata_promise_mio_status = common dso_local global i32 0, align 4
@ata_promise_mio_softreset = common dso_local global i32 0, align 4
@ata_promise_mio_pm_read = common dso_local global i32 0, align 4
@ata_promise_mio_pm_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_promise_mio_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_mio_ch_attach(i32 %0) #0 {
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
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PR_SX4X, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 786432, i32 0
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @ata_promise_mio_dmainit(i32 %24)
  %26 = load i32, i32* @ATA_DATA, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %59, %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ATA_COMMAND, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 512
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %44, 2
  %46 = add nsw i32 %43, %45
  %47 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 7
  %51 = add nsw i32 %46, %50
  %52 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %31
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %67 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* @ATA_CONTROL, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 568
  %74 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %75 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 7
  %78 = add nsw i32 %73, %77
  %79 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %80 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* @ATA_CONTROL, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  %85 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %86 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %89 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* @ATA_IDX_ADDR, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %87, i32* %93, align 4
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @ata_default_registers(i32 %94)
  %96 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %97 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PR_SATA, align 4
  %102 = load i32, i32* @PR_SATA2, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %62
  %107 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %108 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PR_CMBO, align 4
  %113 = load i32, i32* @PR_CMBO2, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %193

117:                                              ; preds = %106
  %118 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %119 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %120, 2
  br i1 %121, label %122, label %193

122:                                              ; preds = %117, %62
  %123 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %124 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %127 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* @ATA_SSTATUS, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %125, i32* %131, align 4
  %132 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %133 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 %134, 8
  %136 = add nsw i32 1024, %135
  %137 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %138 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* @ATA_SSTATUS, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %136, i32* %142, align 4
  %143 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %144 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %147 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i64, i64* @ATA_SERROR, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i32 %145, i32* %151, align 4
  %152 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %153 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 8
  %156 = add nsw i32 1028, %155
  %157 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %158 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i64, i64* @ATA_SERROR, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %156, i32* %162, align 4
  %163 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %164 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %167 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %166, i32 0, i32 3
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i64, i64* @ATA_SCONTROL, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %165, i32* %171, align 4
  %172 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %173 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = shl i32 %174, 8
  %176 = add nsw i32 1032, %175
  %177 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %178 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %177, i32 0, i32 3
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i64, i64* @ATA_SCONTROL, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* @ATA_NO_SLAVE, align 4
  %184 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %185 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @ATA_SATA, align 4
  %189 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %190 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %122, %117, %106
  %194 = load i32, i32* @ATA_USE_16BIT, align 4
  %195 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %196 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* @ATA_CHECKS_CABLE, align 4
  %200 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %201 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* %2, align 4
  %205 = call i32 @ata_generic_hw(i32 %204)
  %206 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %207 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %206, i32 0, i32 0
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @PR_SX4X, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %193
  %215 = load i32, i32* @ata_promise_sx4_command, align 4
  %216 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %217 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  store i32 %215, i32* %218, align 4
  br label %240

219:                                              ; preds = %193
  %220 = load i32, i32* @ata_promise_mio_command, align 4
  %221 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %222 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 4
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* @ata_promise_mio_status, align 4
  %225 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %226 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  store i32 %224, i32* %227, align 4
  %228 = load i32, i32* @ata_promise_mio_softreset, align 4
  %229 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %230 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  store i32 %228, i32* %231, align 4
  %232 = load i32, i32* @ata_promise_mio_pm_read, align 4
  %233 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %234 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  store i32 %232, i32* %235, align 4
  %236 = load i32, i32* @ata_promise_mio_pm_write, align 4
  %237 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %238 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 4
  br label %240

240:                                              ; preds = %219, %214
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_promise_mio_dmainit(i32) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_generic_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
