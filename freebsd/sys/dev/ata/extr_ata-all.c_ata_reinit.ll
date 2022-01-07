; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64, i32, i32, %struct.TYPE_2__, %struct.ata_request* }
%struct.TYPE_2__ = type { i32 (%struct.ata_request*)* }
%struct.ata_request = type { i32, i32 }

@ATA_ACTIVE = common dso_local global i64 0, align 8
@ATA_IDLE = common dso_local global i64 0, align 8
@ERESTART = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_reinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca %struct.ata_request*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ata_channel* @device_get_softc(i32 %5)
  store %struct.ata_channel* %6, %struct.ata_channel** %3, align 8
  %7 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @xpt_freeze_simq(i32 %9, i32 1)
  %11 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %12 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %11, i32 0, i32 4
  %13 = load %struct.ata_request*, %struct.ata_request** %12, align 8
  store %struct.ata_request* %13, %struct.ata_request** %4, align 8
  %14 = icmp ne %struct.ata_request* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  %16 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %16, i32 0, i32 4
  store %struct.ata_request* null, %struct.ata_request** %17, align 8
  %18 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ATA_ACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i64, i64* @ATA_IDLE, align 8
  %25 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %29 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %28, i32 0, i32 1
  %30 = call i32 @callout_stop(i32* %29)
  %31 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %33, align 8
  %35 = icmp ne i32 (%struct.ata_request*)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %39, align 8
  %41 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %42 = call i32 %40(%struct.ata_request* %41)
  br label %43

43:                                               ; preds = %36, %27
  %44 = load i32, i32* @ERESTART, align 4
  %45 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %46 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %49 = call i32 @ata_cam_end_transaction(i32 %47, %struct.ata_request* %48)
  br label %50

50:                                               ; preds = %43, %1
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @ATA_RESET(i32 %51)
  %53 = load i32, i32* @AC_BUS_RESET, align 4
  %54 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %55 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xpt_async(i32 %53, i32 %56, i32* null)
  %58 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %59 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @xpt_release_simq(i32 %60, i32 %61)
  ret i32 0
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ata_cam_end_transaction(i32, %struct.ata_request*) #1

declare dso_local i32 @ATA_RESET(i32) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
