; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_pm_wake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_pm_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32 }

@SATA_SS = common dso_local global i32 0, align 4
@SATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@SATA_SC = common dso_local global i32 0, align 4
@SATA_SC_SPM_MASK = common dso_local global i32 0, align 4
@SATA_SC_SPM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_ch_pm_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_ch_pm_wake(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mvs_channel* @device_get_softc(i32 %6)
  store %struct.mvs_channel* %7, %struct.mvs_channel** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %9 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SATA_SS, align 4
  %12 = call i32 @ATA_INL(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SATA_SS_IPM_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %20 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SATA_SC, align 4
  %23 = call i32 @ATA_INL(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @SATA_SC_SPM_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @SATA_SC_SPM_ACTIVE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %32 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SATA_SC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ATA_OUTL(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %52, %18
  %38 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %39 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SATA_SS, align 4
  %42 = call i32 @ATA_INL(i32 %40, i32 %41)
  %43 = load i32, i32* @SATA_SS_IPM_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = icmp slt i32 %47, 100
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi i1 [ false, %37 ], [ %49, %46 ]
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = call i32 @DELAY(i32 100)
  br label %37

54:                                               ; preds = %17, %50
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
