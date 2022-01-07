; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_process_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_process_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, i64, %union.ccb* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i64 }

@ATA_R_TIMEOUT = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ata_request*)* @ata_cam_process_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_cam_process_sense(i32 %0, %struct.ata_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_request*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ata_request* %1, %struct.ata_request** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_channel* @device_get_softc(i32 %8)
  store %struct.ata_channel* %9, %struct.ata_channel** %5, align 8
  %10 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %11 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %10, i32 0, i32 3
  %12 = load %union.ccb*, %union.ccb** %11, align 8
  store %union.ccb* %12, %union.ccb** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %16 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %24 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %31 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATA_S_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %38 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %62

48:                                               ; preds = %36, %29, %22
  %49 = load i32, i32* @CAM_STATUS_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load %union.ccb*, %union.ccb** %6, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %57 = load %union.ccb*, %union.ccb** %6, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %48, %41
  %63 = load %union.ccb*, %union.ccb** %6, align 8
  %64 = call i32 @xpt_done(%union.ccb* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ata_reinit(i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @ata_reinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
