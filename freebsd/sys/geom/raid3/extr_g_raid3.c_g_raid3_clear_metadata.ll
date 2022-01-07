; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_clear_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_clear_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s cleared.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot clear metadata on disk %s (error=%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid3_clear_metadata(%struct.g_raid3_disk* %0) #0 {
  %2 = alloca %struct.g_raid3_disk*, align 8
  %3 = alloca i32, align 4
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %2, align 8
  %4 = call i32 (...) @g_topology_assert_not()
  %5 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %6 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @SX_LOCKED, align 4
  %10 = call i32 @sx_assert(i32* %8, i32 %9)
  %11 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %12 = call i32 @g_raid3_write_metadata(%struct.g_raid3_disk* %11, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %17 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %16)
  %18 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %21 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_raid3_write_metadata(%struct.g_raid3_disk*, i32*) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
