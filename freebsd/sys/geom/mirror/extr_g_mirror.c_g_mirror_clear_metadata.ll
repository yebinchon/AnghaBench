; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_clear_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_clear_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_MIRROR_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s cleared.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot clear metadata on disk %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_mirror_disk*)* @g_mirror_clear_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mirror_clear_metadata(%struct.g_mirror_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_mirror_disk*, align 8
  %4 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %3, align 8
  %5 = call i32 (...) @g_topology_assert_not()
  %6 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %7 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* @SX_LOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  %12 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %13 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @G_MIRROR_TYPE_AUTOMATIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %22 = call i32 @g_mirror_write_metadata(%struct.g_mirror_disk* %21, i32* null)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %27 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %26)
  %28 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %34

29:                                               ; preds = %20
  %30 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %31 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_mirror_write_metadata(%struct.g_mirror_disk*, i32*) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
