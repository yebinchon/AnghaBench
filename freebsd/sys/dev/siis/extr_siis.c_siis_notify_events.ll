; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_notify_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_notify_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32, i32, i64, i32 }
%struct.cam_path = type { i32 }

@SIIS_Q_SNTF = common dso_local global i32 0, align 4
@SIIS_P_SNTF = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SNTF 0x%04x\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_SCSI_AEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_notify_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_notify_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  %4 = alloca %struct.cam_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.siis_channel* @device_get_softc(i32 %7)
  store %struct.siis_channel* %8, %struct.siis_channel** %3, align 8
  %9 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %10 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SIIS_Q_SNTF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %17 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SIIS_P_SNTF, align 4
  %20 = call i32 @ATA_INL(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %22 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SIIS_P_SNTF, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ATA_OUTL(i32 %23, i32 %24, i32 %25)
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %29 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 32768, i32 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %15
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %68

52:                                               ; preds = %45
  %53 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %54 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @xpt_path_path_id(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @xpt_create_path(%struct.cam_path** %4, i32* null, i32 %56, i32 %57, i32 0)
  %59 = load i64, i64* @CAM_REQ_CMP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @AC_SCSI_AEN, align 4
  %63 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %64 = call i32 @xpt_async(i32 %62, %struct.cam_path* %63, i32* null)
  %65 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %66 = call i32 @xpt_free_path(%struct.cam_path* %65)
  br label %67

67:                                               ; preds = %61, %52
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %42

71:                                               ; preds = %42
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

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
