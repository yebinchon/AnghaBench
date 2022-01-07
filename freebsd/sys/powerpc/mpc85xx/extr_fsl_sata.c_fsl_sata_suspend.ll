; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i64, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fsl_satasusp\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_sata_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_sata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.fsl_sata_channel* @device_get_softc(i32 %4)
  store %struct.fsl_sata_channel* %5, %struct.fsl_sata_channel** %3, align 8
  %6 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xpt_freeze_simq(i32 %11, i32 1)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %20 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* @PRIBIO, align 4
  %23 = load i32, i32* @hz, align 4
  %24 = sdiv i32 %23, 100
  %25 = call i32 @msleep(%struct.fsl_sata_channel* %19, i32* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %13

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @fsl_sata_deinit(i32 %27)
  %29 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  ret i32 0
}

declare dso_local %struct.fsl_sata_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @msleep(%struct.fsl_sata_channel*, i32*, i32, i8*, i32) #1

declare dso_local i32 @fsl_sata_deinit(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
