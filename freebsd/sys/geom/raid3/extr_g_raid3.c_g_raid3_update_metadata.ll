; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_update_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_update_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { %struct.g_raid3_softc* }
%struct.g_raid3_softc = type { i32 }
%struct.g_raid3_metadata = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s updated.\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot update metadata on disk %s (error=%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid3_update_metadata(%struct.g_raid3_disk* %0) #0 {
  %2 = alloca %struct.g_raid3_disk*, align 8
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.g_raid3_metadata, align 4
  %5 = alloca i32, align 4
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %2, align 8
  %6 = call i32 (...) @g_topology_assert_not()
  %7 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %8 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %7, i32 0, i32 0
  %9 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %8, align 8
  store %struct.g_raid3_softc* %9, %struct.g_raid3_softc** %3, align 8
  %10 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %10, i32 0, i32 0
  %12 = load i32, i32* @SX_LOCKED, align 4
  %13 = call i32 @sx_assert(i32* %11, i32 %12)
  %14 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %15 = call i32 @g_raid3_fill_metadata(%struct.g_raid3_disk* %14, %struct.g_raid3_metadata* %4)
  %16 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %17 = call i32 @g_raid3_write_metadata(%struct.g_raid3_disk* %16, %struct.g_raid3_metadata* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %22 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %21)
  %23 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %26 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_raid3_fill_metadata(%struct.g_raid3_disk*, %struct.g_raid3_metadata*) #1

declare dso_local i32 @g_raid3_write_metadata(%struct.g_raid3_disk*, %struct.g_raid3_metadata*) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
