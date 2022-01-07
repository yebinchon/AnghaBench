; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_check_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_check_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@AHCI_CAP_SPM = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_channel*, %union.ccb*)* @ahci_check_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_check_ids(%struct.ahci_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_channel*, align 8
  %5 = alloca %union.ccb*, align 8
  store %struct.ahci_channel* %0, %struct.ahci_channel** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %6 = load %union.ccb*, %union.ccb** %5, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %11 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AHCI_CAP_SPM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 15, i32 0
  %18 = icmp sgt i32 %9, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @CAM_TID_INVALID, align 4
  %21 = load %union.ccb*, %union.ccb** %5, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %25 = load %union.ccb*, %union.ccb** %5, align 8
  %26 = call i32 @ahci_done(%struct.ahci_channel* %24, %union.ccb* %25)
  store i32 -1, i32* %3, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load %union.ccb*, %union.ccb** %5, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @CAM_LUN_INVALID, align 4
  %35 = load %union.ccb*, %union.ccb** %5, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %39 = load %union.ccb*, %union.ccb** %5, align 8
  %40 = call i32 @ahci_done(%struct.ahci_channel* %38, %union.ccb* %39)
  store i32 -1, i32* %3, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %33, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
