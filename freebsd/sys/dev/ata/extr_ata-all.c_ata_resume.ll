; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ata_periodic_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ata_channel* @device_get_softc(i32 %9)
  store %struct.ata_channel* %10, %struct.ata_channel** %4, align 8
  %11 = icmp ne %struct.ata_channel* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %16 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ata_reinit(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @xpt_release_simq(i32 %22, i32 %23)
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 2
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %29 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %14
  %35 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %35, i32 0, i32 1
  %37 = load i32, i32* @hz, align 4
  %38 = load i32, i32* @ata_periodic_poll, align 4
  %39 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %40 = call i32 @callout_reset(i32* %36, i32 %37, i32 %38, %struct.ata_channel* %39)
  br label %41

41:                                               ; preds = %34, %14
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ata_reinit(i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ata_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
