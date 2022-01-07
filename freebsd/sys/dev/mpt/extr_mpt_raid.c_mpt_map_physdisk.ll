; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_map_physdisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_map_physdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, %struct.mpt_raid_disk* }
%struct.mpt_raid_disk = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MPT_RDF_ACTIVE = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mpt_map_physdisk(%d) - Not Active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_map_physdisk(%struct.mpt_softc* %0, %union.ccb* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mpt_raid_disk*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %union.ccb* %1, %union.ccb** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 1
  %11 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %10, align 8
  %12 = load %union.ccb*, %union.ccb** %6, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %11, i64 %16
  store %struct.mpt_raid_disk* %17, %struct.mpt_raid_disk** %8, align 8
  %18 = load %union.ccb*, %union.ccb** %6, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %8, align 8
  %29 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MPT_RDF_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %8, align 8
  %36 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %48

40:                                               ; preds = %27, %3
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %42 = load i32, i32* @MPT_PRT_DEBUG1, align 4
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mpt_lprt(%struct.mpt_softc* %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %34
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
