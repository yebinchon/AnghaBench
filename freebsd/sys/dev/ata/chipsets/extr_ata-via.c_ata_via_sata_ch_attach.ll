; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ata_via_sata_status = common dso_local global i32 0, align 4
@ata_via_sata_scr_read = common dso_local global i32 0, align 4
@ata_via_sata_scr_write = common dso_local global i32 0, align 4
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ATA_SERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_via_sata_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_sata_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ata_channel* @device_get_softc(i32 %5)
  store %struct.ata_channel* %6, %struct.ata_channel** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @ata_pci_ch_attach(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load i32, i32* @ata_via_sata_status, align 4
  %19 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @ata_via_sata_scr_read, align 4
  %23 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @ata_via_sata_scr_write, align 4
  %27 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %31 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @ATA_SATA, align 4
  %36 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %41 = load i32, i32* @ATA_SERROR, align 4
  %42 = call i32 @ata_sata_scr_write(%struct.ata_channel* %40, i32 0, i32 %41, i32 -1)
  %43 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %44 = load i32, i32* @ATA_SERROR, align 4
  %45 = call i32 @ata_sata_scr_write(%struct.ata_channel* %43, i32 1, i32 %44, i32 -1)
  br label %46

46:                                               ; preds = %17, %12
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i64 @ata_pci_ch_attach(i32) #1

declare dso_local i32 @ata_sata_scr_write(%struct.ata_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
