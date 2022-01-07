; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_notify_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_notify_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i32, i32 }
%struct.cam_path = type { i32 }

@FSL_SATA_P_SNTF = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SNTF 0x%04x\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_SCSI_AEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*, i32)* @fsl_sata_notify_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_notify_events(%struct.fsl_sata_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FSL_SATA_P_SNTF, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ATA_OUTL(i32 %9, i32 %10, i32 %11)
  %13 = load i64, i64* @bootverbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %48

32:                                               ; preds = %25
  %33 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xpt_path_path_id(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @xpt_create_path(%struct.cam_path** %5, i32* null, i32 %36, i32 %37, i32 0)
  %39 = load i64, i64* @CAM_REQ_CMP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @AC_SCSI_AEN, align 4
  %43 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %44 = call i32 @xpt_async(i32 %42, %struct.cam_path* %43, i32* null)
  %45 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %46 = call i32 @xpt_free_path(%struct.cam_path* %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
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
