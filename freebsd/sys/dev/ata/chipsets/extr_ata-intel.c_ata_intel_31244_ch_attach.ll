; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_31244_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_31244_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ATA_DATA = common dso_local global i64 0, align 8
@ATA_MAX_RES = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i64 0, align 8
@ATA_COUNT = common dso_local global i64 0, align 8
@ATA_SECTOR = common dso_local global i64 0, align 8
@ATA_CYL_LSB = common dso_local global i64 0, align 8
@ATA_CYL_MSB = common dso_local global i64 0, align 8
@ATA_DRIVE = common dso_local global i64 0, align 8
@ATA_COMMAND = common dso_local global i64 0, align 8
@ATA_ERROR = common dso_local global i64 0, align 8
@ATA_STATUS = common dso_local global i64 0, align 8
@ATA_ALTSTAT = common dso_local global i64 0, align 8
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_SSTATUS = common dso_local global i64 0, align 8
@ATA_SERROR = common dso_local global i64 0, align 8
@ATA_SCONTROL = common dso_local global i64 0, align 8
@ATA_BMCMD_PORT = common dso_local global i64 0, align 8
@ATA_BMSTAT_PORT = common dso_local global i64 0, align 8
@ATA_BMDTP_PORT = common dso_local global i64 0, align 8
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ata_intel_31244_status = common dso_local global i32 0, align 4
@ata_intel_31244_tf_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_intel_31244_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_31244_ch_attach(i32 %0) #0 {
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
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ata_pci_dmainit(i32 %14)
  %16 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 512
  %20 = add nsw i32 512, %19
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @ATA_DATA, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %38, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ATA_MAX_RES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 0
  %44 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %45 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* @ATA_DATA, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 6
  %52 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* @ATA_FEATURE, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 8
  %60 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %61 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i64, i64* @ATA_COUNT, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 12
  %68 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %69 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* @ATA_SECTOR, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 16
  %76 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %77 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i64, i64* @ATA_CYL_LSB, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 20
  %84 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %85 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* @ATA_CYL_MSB, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 24
  %92 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %93 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* @ATA_DRIVE, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 29
  %100 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %101 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i64, i64* @ATA_COMMAND, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 4
  %108 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %109 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %108, i32 0, i32 3
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i64, i64* @ATA_ERROR, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 28
  %116 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %117 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i64, i64* @ATA_STATUS, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %115, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 40
  %124 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %125 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %124, i32 0, i32 3
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i64, i64* @ATA_ALTSTAT, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 41
  %132 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %133 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %132, i32 0, i32 3
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i64, i64* @ATA_CONTROL, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 %131, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 256
  %140 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %141 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i64, i64* @ATA_SSTATUS, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %139, i32* %145, align 4
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 260
  %148 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %149 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %148, i32 0, i32 3
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i64, i64* @ATA_SERROR, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 264
  %156 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %157 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %156, i32 0, i32 3
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i64, i64* @ATA_SCONTROL, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 112
  %164 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %165 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %164, i32 0, i32 3
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 114
  %172 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %173 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %172, i32 0, i32 3
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i64, i64* @ATA_BMSTAT_PORT, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store i32 %171, i32* %177, align 4
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 116
  %180 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %181 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %180, i32 0, i32 3
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = load i64, i64* @ATA_BMDTP_PORT, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 %179, i32* %185, align 4
  %186 = load i32, i32* @ATA_NO_SLAVE, align 4
  %187 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %188 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* @ATA_SATA, align 4
  %192 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %193 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %2, align 4
  %197 = call i32 @ata_pci_hw(i32 %196)
  %198 = load i32, i32* @ata_intel_31244_status, align 4
  %199 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %200 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* @ata_intel_31244_tf_write, align 4
  %203 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %204 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 4
  %206 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %207 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %210 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ATA_INL(i32 %211, i32 4)
  %213 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %214 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = shl i32 %215, 3
  %217 = shl i32 1, %216
  %218 = or i32 %212, %217
  %219 = call i32 @ATA_OUTL(i32 %208, i32 4, i32 %218)
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_pci_dmainit(i32) #1

declare dso_local i32 @ata_pci_hw(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
