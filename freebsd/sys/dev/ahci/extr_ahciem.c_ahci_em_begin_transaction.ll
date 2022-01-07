; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.ata_res }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ata_res = type { i32, i32 }
%struct.ahci_enclosure = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@AHCI_EM_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unsupported enclosure interface\0A\00", align 1
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @ahci_em_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_em_begin_transaction(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ahci_enclosure*, align 8
  %6 = alloca %struct.ata_res*, align 8
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ahci_enclosure* @device_get_softc(i32 %7)
  store %struct.ahci_enclosure* %8, %struct.ahci_enclosure** %5, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_5__*
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store %struct.ata_res* %11, %struct.ata_res** %6, align 8
  %12 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %13 = call i32 @bzero(%struct.ata_res* %12, i32 8)
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATA_A_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %33 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %32, i32 0, i32 0
  store i32 195, i32* %33, align 4
  %34 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %35 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %34, i32 0, i32 1
  store i32 60, i32* %35, align 4
  %36 = load i32, i32* @CAM_REQ_CMP, align 4
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %union.ccb*, %union.ccb** %4, align 8
  %41 = call i32 @xpt_done(%union.ccb* %40)
  br label %63

42:                                               ; preds = %22, %2
  %43 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %44 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AHCI_EM_LED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = call i32 @ahci_em_emulate_ses_on_led(i32 %50, %union.ccb* %51)
  br label %63

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @CAM_REQ_INVALID, align 4
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = call i32 @xpt_done(%union.ccb* %61)
  br label %63

63:                                               ; preds = %56, %49, %31
  ret void
}

declare dso_local %struct.ahci_enclosure* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ata_res*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @ahci_em_emulate_ses_on_led(i32, %union.ccb*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
