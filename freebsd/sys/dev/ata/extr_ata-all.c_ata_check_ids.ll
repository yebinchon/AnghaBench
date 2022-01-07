; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_check_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_check_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.ata_channel = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@ATA_FLAG_AUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"AUX register unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.ccb*)* @ata_check_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_check_ids(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %4, align 4
  store %union.ccb* %1, %union.ccb** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %6, align 8
  %9 = load %union.ccb*, %union.ccb** %5, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATA_NO_SLAVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  %21 = icmp sgt i32 %12, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @CAM_TID_INVALID, align 4
  %24 = load %union.ccb*, %union.ccb** %5, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load %union.ccb*, %union.ccb** %5, align 8
  %28 = call i32 @xpt_done(%union.ccb* %27)
  store i32 -1, i32* %3, align 4
  br label %61

29:                                               ; preds = %2
  %30 = load %union.ccb*, %union.ccb** %5, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @CAM_LUN_INVALID, align 4
  %37 = load %union.ccb*, %union.ccb** %5, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %union.ccb*, %union.ccb** %5, align 8
  %41 = call i32 @xpt_done(%union.ccb* %40)
  store i32 -1, i32* %3, align 4
  br label %61

42:                                               ; preds = %29
  %43 = load %union.ccb*, %union.ccb** %5, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XPT_ATA_IO, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ATA_FLAG_AUX, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br label %57

57:                                               ; preds = %49, %42
  %58 = phi i1 [ true, %42 ], [ %56, %49 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @KASSERT(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %35, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
