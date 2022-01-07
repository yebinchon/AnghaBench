; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i64, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@ATA_IDLE = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"atasusp\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_channel* @device_get_softc(i32 %8)
  store %struct.ata_channel* %9, %struct.ata_channel** %4, align 8
  %10 = icmp ne %struct.ata_channel* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %7
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %21, i32 0, i32 4
  %23 = call i32 @callout_drain(i32* %22)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 2
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %29 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xpt_freeze_simq(i32 %30, i32 1)
  br label %32

32:                                               ; preds = %38, %24
  %33 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %34 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATA_IDLE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %40 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %41 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %40, i32 0, i32 2
  %42 = load i32, i32* @PRIBIO, align 4
  %43 = load i32, i32* @hz, align 4
  %44 = sdiv i32 %43, 100
  %45 = call i32 @msleep(%struct.ata_channel* %39, i32* %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 2
  %49 = call i32 @mtx_unlock(i32* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @msleep(%struct.ata_channel*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
