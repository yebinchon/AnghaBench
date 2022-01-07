; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_notify_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_notify_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32, i32 }
%struct.cam_path = type { i32 }

@AHCI_CAP_SSNTF = common dso_local global i32 0, align 4
@AHCI_P_SNTF = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SNTF 0x%04x\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_SCSI_AEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*, i32)* @ahci_notify_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_notify_events(%struct.ahci_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AHCI_CAP_SSNTF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AHCI_P_SNTF, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ATA_OUTL(i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i64, i64* @bootverbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %25 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %56

40:                                               ; preds = %33
  %41 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %42 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @xpt_path_path_id(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @xpt_create_path(%struct.cam_path** %5, i32* null, i32 %44, i32 %45, i32 0)
  %47 = load i64, i64* @CAM_REQ_CMP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @AC_SCSI_AEN, align 4
  %51 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %52 = call i32 @xpt_async(i32 %50, %struct.cam_path* %51, i32* null)
  %53 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %54 = call i32 @xpt_free_path(%struct.cam_path* %53)
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %30

59:                                               ; preds = %30
  ret void
}

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_path_path_id(i32) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
