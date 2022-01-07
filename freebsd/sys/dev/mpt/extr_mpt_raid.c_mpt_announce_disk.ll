; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_announce_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_announce_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32, i32 }
%struct.mpt_raid_disk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Physical (%s:%d:%d:0), Pass-thru (%s:%d:%d:0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Member of Hot Spare Pool%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mpt_raid_disk*)* @mpt_announce_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_announce_disk(%struct.mpt_softc* %0, %struct.mpt_raid_disk* %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mpt_raid_disk*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store %struct.mpt_raid_disk* %1, %struct.mpt_raid_disk** %4, align 8
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cam_sim_bus(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cam_sim_bus(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %4, align 8
  %19 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %18, i32 0, i32 0
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %5, align 8
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %21 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %4, align 8
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_get_nameunit(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %4, align 8
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %37, i64 %42
  %44 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, i8*, ...) @mpt_disk_prt(%struct.mpt_softc* %20, %struct.mpt_raid_disk* %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %31, i32 %35, i32 %36, %struct.mpt_raid_disk* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %87

51:                                               ; preds = %2
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %53 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %4, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @powerof2(i32 %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, i8*, ...) @mpt_disk_prt(%struct.mpt_softc* %52, %struct.mpt_raid_disk* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %81, %51
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 1, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %81

77:                                               ; preds = %66
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prtc(%struct.mpt_softc* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %86 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prtc(%struct.mpt_softc* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %50
  ret void
}

declare dso_local i32 @cam_sim_bus(i32) #1

declare dso_local i32 @mpt_disk_prt(%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @powerof2(i32) #1

declare dso_local i32 @mpt_prtc(%struct.mpt_softc*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
