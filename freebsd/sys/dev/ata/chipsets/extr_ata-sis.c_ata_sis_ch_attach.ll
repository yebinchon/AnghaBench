; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-sis.c_ata_sis_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-sis.c_ata_sis_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ATA_SIS182 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ATA_SSTATUS = common dso_local global i64 0, align 8
@ATA_SERROR = common dso_local global i64 0, align 8
@ATA_SCONTROL = common dso_local global i64 0, align 8
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_sis_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sis_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_channel*
  store %struct.ata_channel* %13, %struct.ata_channel** %5, align 8
  %14 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATA_SIS182, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 5, i32 6
  %26 = shl i32 %16, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @ata_pci_ch_attach(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %94

32:                                               ; preds = %1
  %33 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* @ATA_SSTATUS, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %35, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 0, %42
  %44 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %45 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @ATA_SSTATUS, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  %50 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %51 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %54 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* @ATA_SERROR, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 4, %59
  %61 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %62 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* @ATA_SERROR, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %60, i32* %66, align 4
  %67 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %68 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %71 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* @ATA_SCONTROL, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 8, %76
  %78 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i64, i64* @ATA_SCONTROL, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* @ATA_NO_SLAVE, align 4
  %85 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %86 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @ATA_SATA, align 4
  %90 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %91 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %32, %30
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ata_pci_ch_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
