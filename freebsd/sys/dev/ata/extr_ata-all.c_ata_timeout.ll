; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32 }
%struct.ata_channel = type { i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ata_request*)* }

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ATA_ACTIVE = common dso_local global i64 0, align 8
@ATA_R_TIMEOUT = common dso_local global i32 0, align 4
@ATA_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_timeout(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %4 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %5 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %3, align 8
  %8 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %9 = call i32 @ATA_DEBUG_RQ(%struct.ata_request* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %11 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ATA_ACTIVE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %17 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %18 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %22 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %23, align 8
  %25 = icmp ne i32 (%struct.ata_request*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %29, align 8
  %31 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %32 = call i32 %30(%struct.ata_request* %31)
  br label %33

33:                                               ; preds = %26, %15
  %34 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load i64, i64* @ATA_IDLE, align 8
  %37 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %40 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %43 = call i32 @ata_cam_end_transaction(i32 %41, %struct.ata_request* %42)
  br label %44

44:                                               ; preds = %33, %1
  %45 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %45, i32 0, i32 1
  %47 = call i32 @mtx_unlock(i32* %46)
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_DEBUG_RQ(%struct.ata_request*, i8*) #1

declare dso_local i32 @ata_cam_end_transaction(i32, %struct.ata_request*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
