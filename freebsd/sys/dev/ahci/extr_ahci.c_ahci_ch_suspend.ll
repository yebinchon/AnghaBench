; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i64, i32, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ahcisusp\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_ch_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_ch_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ahci_channel* @device_get_softc(i32 %4)
  store %struct.ahci_channel* %5, %struct.ahci_channel** %3, align 8
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xpt_freeze_simq(i32 %11, i32 1)
  %13 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %20, i32 0, i32 3
  %22 = call i32 @callout_stop(i32* %21)
  %23 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @xpt_release_simq(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %17, %1
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %31 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %36 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %36, i32 0, i32 0
  %38 = load i32, i32* @PRIBIO, align 4
  %39 = load i32, i32* @hz, align 4
  %40 = sdiv i32 %39, 100
  %41 = call i32 @msleep(%struct.ahci_channel* %35, i32* %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %29

42:                                               ; preds = %29
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @ahci_ch_deinit(i32 %43)
  %45 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  ret i32 0
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @msleep(%struct.ahci_channel*, i32*, i32, i8*, i32) #1

declare dso_local i32 @ahci_ch_deinit(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
