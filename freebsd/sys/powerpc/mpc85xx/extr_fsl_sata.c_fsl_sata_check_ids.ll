; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_check_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_check_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@CAM_TID_INVALID = common dso_local global i32 0, align 4
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_sata_channel*, %union.ccb*)* @fsl_sata_check_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_check_ids(%struct.fsl_sata_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_sata_channel*, align 8
  %5 = alloca %union.ccb*, align 8
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %6 = load %union.ccb*, %union.ccb** %5, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @CAM_TID_INVALID, align 4
  %13 = load %union.ccb*, %union.ccb** %5, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %17 = load %union.ccb*, %union.ccb** %5, align 8
  %18 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %16, %union.ccb* %17)
  store i32 -1, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %union.ccb*, %union.ccb** %5, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @CAM_LUN_INVALID, align 4
  %27 = load %union.ccb*, %union.ccb** %5, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %31 = load %union.ccb*, %union.ccb** %5, align 8
  %32 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %30, %union.ccb* %31)
  store i32 -1, i32* %3, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
