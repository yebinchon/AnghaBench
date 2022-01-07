; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_notify_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_notify_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i64, i32 }
%struct.cam_path = type { i32 }

@SATA_FISDW0 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"SNTF %d\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_SCSI_AEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_notify_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_notify_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca %struct.cam_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.mvs_channel* @device_get_softc(i32 %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %3, align 8
  %9 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %10 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SATA_FISDW0, align 4
  %13 = call i32 @ATA_INL(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 33023
  %16 = icmp eq i32 %15, 32929
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 3840
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %6, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %23 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 15, i32 0
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i64, i64* @bootverbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %37 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @xpt_path_path_id(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @xpt_create_path(%struct.cam_path** %4, i32* null, i32 %39, i32 %40, i32 0)
  %42 = load i64, i64* @CAM_REQ_CMP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* @AC_SCSI_AEN, align 4
  %46 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %47 = call i32 @xpt_async(i32 %45, %struct.cam_path* %46, i32* null)
  %48 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %49 = call i32 @xpt_free_path(%struct.cam_path* %48)
  br label %50

50:                                               ; preds = %44, %35
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

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
